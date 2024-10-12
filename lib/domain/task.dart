import 'package:injectable/injectable.dart';
import 'package:todo/data/api_mixins.dart';
import 'package:todo/data/auth_api_repository.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/src/core/utils/types.dart';

///НАСТОЯЩИЙ БЭК ВЫПИЛЕН, ЗАМЕНЕН НА МОКОВЫЙ!

@injectable
class GetTaskRepository extends AbstractAPIRepository
    with GetMixin<TaskResponseModel> {
  static const _prefix = '';

  @override
  Future<TaskResponseModel> get({
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final revision = getIt.get<RevisionRepository>().get();
    final response = TaskResponseModel(
        status: 'ok',
        element: OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '1',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        revision: revision);
    return response;
  }

  GetTaskRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  TaskResponseModel parse(Map<String, dynamic> data) {
    return TaskResponseModel.fromJson(data);
  }
}

@injectable
class UpdateTaskRepository extends AbstractAPIRepository
    with UpdateMixin<TaskRequestModel, TaskResponseModel> {
  static const _prefix = '';

  UpdateTaskRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  Future<TaskResponseModel> put(
    TaskRequestModel model, {
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final revision = getIt.get<RevisionRepository>().get() + 1;
    final response = TaskResponseModel(
        status: 'ok',
        element: OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '1',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        revision: revision);
    return response;
  }

  @override
  TaskResponseModel parse(Map<String, dynamic> data) {
    return TaskResponseModel.fromJson(data);
  }
}

@injectable
class DeleteTaskRepository extends AbstractAPIRepository
    with DeleteMixin<TaskResponseModel> {
  static const _prefix = '';

  DeleteTaskRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  Future<TaskResponseModel> delete({
    String? id,
    Map<String, String> extraHeaders = const {},
  }) async {
    final revision = getIt.get<RevisionRepository>().get() + 1;
    final response = TaskResponseModel(
        status: 'ok',
        element: OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '1',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        revision: revision);
    return response;
  }

  @override
  TaskResponseModel parse(Map<String, dynamic> data) {
    return TaskResponseModel.fromJson(data);
  }
}
