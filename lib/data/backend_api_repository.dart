import 'dart:convert' as convert;

import 'package:flutter/foundation.dart' show mustCallSuper;
import 'package:http/http.dart' as http;
import 'package:todo/data/api_exception.dart';
import 'package:todo/src/core/utils/types.dart';

class APIRepository {
  static const String _authority = '';

  final String _basePath;
  final Map<String, String> _defaultHeaders;

  APIRepository({
    required String basePath,
    Map<String, String> defaultHeaders = const {},
  })  : _basePath = basePath,
        _defaultHeaders = Map.unmodifiable(defaultHeaders);

  @mustCallSuper
  Map<String, String> get headers {
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      ..._defaultHeaders,
    };
    return headers;
  }

  Future<T> _withClient<T>(Future<T> Function(http.Client) fn) async {
    var client = http.Client();
    try {
      return await fn(client);
    } finally {
      client.close();
    }
  }

  Future<Map<String, dynamic>> get(
    String path, {
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final uri = Uri.https(_authority, _basePath + path, queryParams);
    final response = await _withClient(
      (client) async => client.get(
        uri,
        headers: headers..addAll(extraHeaders),
      ),
    );
    return _decode(response);
  }

  Future<Map<String, dynamic>> post(
    String path,
    dynamic data, {
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final uri = Uri.https(_authority, _basePath + path, queryParams);

    var response = await _withClient(
      (client) async => client.post(
        uri,
        headers: (headers)..addAll(extraHeaders),
        body: convert.jsonEncode(data),
      ),
    );
    return _decode(response);
  }

  Future<Map<String, dynamic>> put(
    String path,
    Map<String, dynamic> data, {
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final uri = Uri.https(_authority, _basePath + path, queryParams);

    var response = await _withClient(
      (client) async => client.put(
        uri,
        headers: (headers)..addAll(extraHeaders),
        body: convert.jsonEncode(data),
      ),
    );
    return _decode(response);
  }

  Future<Map<String, dynamic>> patch(
    String path,
    Map<String, dynamic> data, {
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final uri = Uri.https(_authority, _basePath + path, queryParams);

    var response = await _withClient(
      (client) async => client.patch(
        uri,
        headers: (headers)..addAll(extraHeaders),
        body: convert.jsonEncode(data),
      ),
    );
    return _decode(response);
  }

  Future<Map<String, dynamic>> delete(
    String path, {
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final uri = Uri.https(_authority, _basePath + path, queryParams);

    var response = await _withClient(
      (client) async => client.delete(
        uri,
        headers: (headers)..addAll(extraHeaders),
      ),
    );
    return _decode(response);
  }

  Future<List<Map<String, dynamic>>> list(String path,
      {QueryParams? queryParams}) async {
    return await get(
      path,
      queryParams: queryParams?.map<String, String>(
        (key, value) => MapEntry(key, value.toString()),
      ),
    ) as List<Map<String, dynamic>>;
  }

  void _handleError(http.Response response) {
    if (response.statusCode == 500) {
      throw const APIInternalServerException();
    }

    final utf8Body = convert.utf8.decode(response.bodyBytes);
    try {
      final jsonResponse = convert.jsonDecode(utf8Body) as Map<String, dynamic>;
      final errorString = _collectErrorString(jsonResponse);
      if (response.statusCode == 400) {
        throw APIValidationException(errorString);
      } else if (response.statusCode == 401) {
        throw APIAuthenticationException(errorString);
      } else if (response.statusCode == 404) {
        throw APINotFoundException(errorString);
      }
      throw APIGenericException(errorString);
    } on FormatException {
      throw APIGenericException(utf8Body);
    }
  }

  String _collectErrorString(Map<String, dynamic> json) {
    final errors = json['errors'];
    if (errors == null || errors is! List) {
      return json['message']?.toString() ?? '${json}';
    }

    errors.removeWhere((errorJson) => errorJson['message'] == null);
    if (errors.isEmpty) {
      return json['message']?.toString() ?? '$json';
    }

    return errors.map((errorJson) => errorJson['message']).join(', ');
  }

  Map<String, dynamic> _decode(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 400) {
      var utf8Body = convert.utf8.decode(response.bodyBytes);
      if (utf8Body.isEmpty) {
        return <String, dynamic>{};
      }
      try {
        return convert.jsonDecode(utf8Body) as Map<String, dynamic>;
      } on FormatException {
        throw APIGenericException(utf8Body);
      }
    }
    _handleError(response);
    return <String, dynamic>{};
  }
}
