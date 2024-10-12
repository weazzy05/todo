import 'package:flutter/foundation.dart';
import 'package:todo/data/backend_api_repository.dart';
import 'package:todo/src/core/utils/serializable.dart';
import 'package:todo/src/core/utils/types.dart';

abstract class AbstractAPIRepository {
  final APIRepository _api;
  final String _prefix;
  final String? _action;

  AbstractAPIRepository({
    required String prefix,
    String? action,
    required APIRepository api,
  })  : _prefix = prefix,
        _api = api,
        _action = action;

  String _getPath({String? id}) {
    String path = _prefix;
    if (id != null) {
      path = '$path/$id';
    }
    if (_action != null) {
      path = '$path/$_action';
    }
    return path;
  }
}

mixin GetMixin<M> on AbstractAPIRepository {
  Future<M> get({
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final json = await _api.get(
      _getPath(id: id),
      queryParams: queryParams,
      extraHeaders: extraHeaders,
    );
    return parse(json);
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin CreateMixin<T extends Serializable, M> on AbstractAPIRepository {
  Future<M> post(
    T model, {
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final json = await _api.post(
      _getPath(id: id),
      model.toJson(),
      queryParams: queryParams,
      extraHeaders: extraHeaders,
    );
    return parse(json);
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin CreateListMixin<T extends Serializable, M> on AbstractAPIRepository {
  Future<List<M>> post(List<T> models) async {
    final List<Map<String, dynamic>> data =
        (await _api.post(_prefix, models.map((m) => m.toJson()).toList()))
            as List<Map<String, dynamic>>;
    return data.map((d) => parse(d)).toList();
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin DeleteMixin<M> on AbstractAPIRepository {
  Future<M> delete({
    String? id,
    Map<String, String> extraHeaders = const {},
  }) async {
    final json =
        await _api.delete(_getPath(id: id), extraHeaders: extraHeaders);
    return parse(json);
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin UpdateMixin<T extends Serializable, M> on AbstractAPIRepository {
  Future<M> put(
    T model, {
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final json = await _api.put(
      _getPath(id: id),
      model.toJson(),
      queryParams: queryParams,
      extraHeaders: extraHeaders,
    );
    return parse(json);
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin PartialUpdateMixin<T extends Serializable, M> on AbstractAPIRepository {
  Future<M> patch(
    T model, {
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final json = await _api.patch(
      _getPath(id: id),
      model.toJson(),
      queryParams: queryParams,
      extraHeaders: extraHeaders,
    );
    return parse(json);
  }

  @protected
  M parse(Map<String, dynamic> data);
}

mixin ListMixin<M> on AbstractAPIRepository {
  Future<List<M>> list({QueryParams? queryParams}) async {
    final data = await _api.list(_prefix, queryParams: queryParams);
    return data.map((e) => parse(e as Map<String, dynamic>)).toList();
  }

  @protected
  M parse(Map<String, dynamic> data);
}
