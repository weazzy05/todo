import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/data/models/tasks.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/domain/task.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/domain/tasks_list.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/core/utils/remote_request_utils.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:uuid/uuid.dart';

class MockTasksRepository extends Mock implements TasksRepository {}

class MockDeleteTaskRepository extends Mock implements DeleteTaskRepository {}

class MockUpdateTasksListRepository extends Mock
    implements UpdateTasksListRepository {}

class MockRevisionRepository extends Mock implements RevisionRepository {}

class MockGetTasksListRepository extends Mock
    implements GetTasksListRepository {}

class MockUpdateTaskRepository extends Mock implements UpdateTaskRepository {}

class MockCreateTasksListRepository extends Mock
    implements CreateTasksListRepository {}

class MockDeviceInfoRepository extends Mock implements DeviceInfoRepository {}

class FakeTask extends Fake implements OnlyTaskModel {}

class FakeTaskRequestModel extends Fake implements TaskRequestModel {}

class FakeTasksRequestModel extends Fake implements TasksRequestModel {}

void main() {
  final tasks = [
    OnlyTaskModel(
      id: '1',
      text: 'Prog',
      done: false,
      createdAt: 1000,
      changedAt: 2000,
      lastUpdatedBy: '1',
    ),
    OnlyTaskModel(
      id: '2',
      text: 'Buy',
      done: false,
      createdAt: 1000,
      changedAt: 2000,
      lastUpdatedBy: '2',
    ),
    OnlyTaskModel(
      id: '3',
      text: 'Eat',
      done: true,
      createdAt: 1000,
      changedAt: 2000,
      lastUpdatedBy: '3',
    ),
  ];
  const revision = 1;

  final tasksResponseModel =
      TasksResponseModel(status: 'ok', list: tasks, revision: revision);
  final taskResponseModel =
      TaskResponseModel(status: 'ok', element: tasks.first, revision: revision);

  group('InitializationBloc test', () {
    late TasksRepository localStorageTasksRepository;
    late DeviceInfoRepository deviceInfo;
    late DeleteTaskRepository deleteTaskRepository;
    late UpdateTasksListRepository patchTaskListApi;
    late RevisionRepository revisionRepository;
    late GetTasksListRepository getTasksListApi;
    late UpdateTaskRepository updateTaskRepository;
    late CreateTasksListRepository createTasksListRepository;
    late AnalyticsService analyticsService;
    setUpAll(() {
      registerFallbackValue(FakeTask());
      registerFallbackValue(FakeTaskRequestModel());
      registerFallbackValue(FakeTasksRequestModel());
    });

    setUp(() {
      localStorageTasksRepository = MockTasksRepository();
      deleteTaskRepository = MockDeleteTaskRepository();
      deviceInfo = MockDeviceInfoRepository();
      patchTaskListApi = MockUpdateTasksListRepository();
      revisionRepository = MockRevisionRepository();
      getTasksListApi = MockGetTasksListRepository();
      updateTaskRepository = MockUpdateTaskRepository();
      createTasksListRepository = MockCreateTasksListRepository();
      analyticsService = MockAnalyticsService();
      when(
        () => localStorageTasksRepository.getTasks(),
      ).thenAnswer((_) => Stream.value(tasks));
      when(
        () => getTasksListApi.get(),
      ).thenAnswer((_) async => tasksResponseModel);
      when(
        () => patchTaskListApi.patch(
          any(),
          extraHeaders: any(named: 'extraHeaders'),
        ),
      ).thenAnswer((_) async => tasksResponseModel);
      when(
        () => deviceInfo.getInfo(),
      ).thenAnswer((_) async => 'Android 9.0');
      when(
        () => createTasksListRepository.post(
          any(),
          extraHeaders: any(named: 'extraHeaders'),
        ),
      ).thenAnswer((_) async => taskResponseModel);
      when(
        () => revisionRepository.get(),
      ).thenAnswer((_) => revision);
      when(
        () => revisionRepository.set(any()),
      ).thenAnswer((_) async => true);
      when(() => localStorageTasksRepository.saveTask(any()))
          .thenAnswer((_) async {});
      when(() => localStorageTasksRepository.dispose())
          .thenAnswer((_) async {});
    });

    InitializationBloc buildBloc() {
      return InitializationBloc(
        analyticsService: analyticsService,
        patchTaskListApi: patchTaskListApi,
        updateTaskRepository: updateTaskRepository,
        deleteTaskRepository: deleteTaskRepository,
        localStorageTasksRepository: localStorageTasksRepository,
        createTasksListRepository: createTasksListRepository,
        deviceInfo: deviceInfo,
        revisionRepository: revisionRepository,
        getTasksListApi: getTasksListApi,
      );
    }

    group('constructor', () {
      test('works properly', () => expect(buildBloc, returnsNormally));

      test('has correct initial state', () {
        expect(
          buildBloc().state,
          equals(const InitializationState()),
        );
      });
    });

    group('InitializationBloc', () {
      blocTest<InitializationBloc, InitializationState>(
        'starts listening to repository getTodos stream',
        build: buildBloc,
        act: (bloc) => bloc.add(const StartInitializationEvent()),
        verify: (_) {
          verify(() => localStorageTasksRepository.getTasks()).called(2);
          verify(
            () => patchTaskListApi.patch(
              TasksRequestModel(
                list: tasks,
              ),
              extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
            ),
          ).called(1);
        },
      );

      blocTest<InitializationBloc, InitializationState>(
        'emits state with updated status and tasks '
        'when repository getTasks stream emits new tasks',
        build: buildBloc,
        act: (bloc) => bloc.add(const StartInitializationEvent()),
        expect: () => [
          const InitializationState(
            status: InitializationStatus.loading,
          ),
          InitializationState(
            status: InitializationStatus.success,
            competedTasks: 1,
            tasks: tasks,
          ),
        ],
      );

      blocTest<InitializationBloc, InitializationState>(
        'emits state with failure status '
        'when repository getTasks stream emits error',
        setUp: () {
          when(
            () => localStorageTasksRepository.getTasks(),
          ).thenAnswer((_) => Stream.error(Exception('oops')));
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const StartInitializationEvent()),
        expect: () => [
          const InitializationState(status: InitializationStatus.loading),
          const InitializationState(status: InitializationStatus.failure),
        ],
      );

      blocTest<InitializationBloc, InitializationState>(
        'emits state with updated status and tasks '
        'when repository patcher throw exception, but stream return newTasks',
        setUp: () {
          when(
            () => patchTaskListApi.patch(
              any(),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).thenThrow(const SocketException('error'));
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const StartInitializationEvent()),
        expect: () => [
          const InitializationState(
            status: InitializationStatus.loading,
          ),
          const InitializationState(
            status: InitializationStatus.failedInternetCollection,
          ),
          InitializationState(
            status: InitializationStatus.success,
            competedTasks: 1,
            tasks: tasks,
          ),
        ],
      );
    });

    group('TaskCompletionToggledInitializationEvent', () {
      blocTest<InitializationBloc, InitializationState>(
        'saves task with isCompleted set to event isCompleted flag',
        build: buildBloc,
        seed: () => InitializationState(tasks: tasks, competedTasks: 1),
        act: (bloc) => bloc.add(
          TaskCompletionToggledInitializationEvent(
            task: tasks.first,
            isCompleted: true,
          ),
        ),
        verify: (_) {
          verify(
            () => localStorageTasksRepository
                .saveTask(any(that: isA<OnlyTaskModel>())),
          ).called(1);
          verify(
            () => updateTaskRepository.put(
              any(that: isA<TaskRequestModel>()),
              id: any(named: 'id'),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).called(1);
        },
      );
    });

    group('TaskDeleteInitializationEvent', () {
      blocTest<InitializationBloc, InitializationState>(
        'deletes todo using repository',
        setUp: () {
          when(
            () => localStorageTasksRepository.deleteTask(any()),
          ).thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => InitializationState(tasks: tasks),
        act: (bloc) => bloc.add(TaskDeleteInitializationEvent(tasks.first)),
        verify: (_) {
          verify(
            () => localStorageTasksRepository.deleteTask(tasks.first.id),
          ).called(1);
          verify(
            () => deleteTaskRepository.delete(
              id: tasks.first.id,
              extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
            ),
          ).called(1);
        },
      );
    });

    group('TaskFilterChangedInitializationEvent', () {
      blocTest<InitializationBloc, InitializationState>(
        'emits state with updated filter',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const TaskFilterChangedInitializationEvent(TaskFilter.activeOnly),
        ),
        expect: () => const [
          InitializationState(filter: TaskFilter.activeOnly),
        ],
      );
    });

    group('FastTaskCreateInitializationEvent', () {
      final int nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final newTask = OnlyTaskModel(
        id: const Uuid().v4(),
        text: 'Buy',
        importance: Priority.basic.toShortString(),
        done: false,
        createdAt: nowTime,
        changedAt: nowTime,
        lastUpdatedBy: 'Android 9.0',
      );
      blocTest<InitializationBloc, InitializationState>(
        'emits state with fast create',
        build: buildBloc,
        act: (bloc) {
          bloc.add(const StartInitializationEvent());
          bloc.add(
            FastTaskCreateInitializationEvent(newTask.text),
          );
        },
        verify: (_) {
          verify(
            () => localStorageTasksRepository.saveTask(
              any(
                that: isA<OnlyTaskModel>(),
              ),
            ),
          ).called(1);
          verify(
            () => createTasksListRepository.post(
              any(
                that: isA<TaskRequestModel>(),
              ),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).called(1);
        },
      );
    });

    group('TaskFilterChangedInitializationEvent', () {
      blocTest<InitializationBloc, InitializationState>(
        setUp: () {
          when(
            () => getTasksListApi.get(),
          ).thenAnswer((_) async => tasksResponseModel.copyWith(revision: 2));
        },
        'emits state with saveAllTask ',
        build: buildBloc,
        act: (bloc) => bloc.add(const StartInitializationEvent()),
        verify: (_) {
          verify(
            () => localStorageTasksRepository.saveAllTasks(tasks),
          ).called(1);
        },
      );
    });
  });
}
