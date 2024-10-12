import 'package:injectable/injectable.dart';
import 'package:todo/data/api_mixins.dart';
import 'package:todo/data/auth_api_repository.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/data/models/tasks.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/src/core/utils/types.dart';

///НАСТОЯЩИЙ БЭК ВЫПИЛЕН, ЗАМЕНЕН НА МОКОВЫЙ!!

@injectable
class GetTasksListRepository extends AbstractAPIRepository
    with GetMixin<TasksResponseModel> {
  static const _prefix = '';

  GetTasksListRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  Future<TasksResponseModel> get({
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final revision = getIt.get<RevisionRepository>().get();
    final response = TasksResponseModel(
      status: 'ok',
      revision: revision,
      list: [
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '2',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '1',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '3',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
      ],
    );
    return response;
  }

  @override
  TasksResponseModel parse(Map<String, dynamic> data) {
    return TasksResponseModel.fromJson(data);
  }
}

@injectable
class CreateTasksListRepository extends AbstractAPIRepository
    with CreateMixin<TaskRequestModel, TaskResponseModel> {
  static const _prefix = '';

  CreateTasksListRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  Future<TaskResponseModel> post(
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
class UpdateTasksListRepository extends AbstractAPIRepository
    with PartialUpdateMixin<TasksRequestModel, TasksResponseModel> {
  static const _prefix = '';

  UpdateTasksListRepository({required AuthenticatedAPIRepository api})
      : super(api: api, prefix: _prefix);

  @override
  Future<TasksResponseModel> patch(
    TasksRequestModel model, {
    String? id,
    QueryParams? queryParams,
    Map<String, String> extraHeaders = const {},
  }) async {
    final revision = getIt.get<RevisionRepository>().get() + 1;
    final response = TasksResponseModel(
      status: 'ok',
      revision: revision,
      list: [
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '2',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '1',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
        OnlyTaskModel(
          changedAt: 1,
          text: '',
          id: '3',
          createdAt: 1,
          lastUpdatedBy: '1',
          done: true,
        ),
      ],
    );
    return response;
  }

  @override
  TasksResponseModel parse(Map<String, dynamic> data) {
    return TasksResponseModel.fromJson(data);
  }
}
