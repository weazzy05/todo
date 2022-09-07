import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/domain/task.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/domain/tasks_list.dart';
import 'package:todo/features/edit_add_task/bloc/bloc.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/utils/priority.dart';

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

  final taskResponseModel =
      TaskResponseModel(status: 'ok', element: tasks.first, revision: 1);

  const revision = 1;

  group('EditAddTaskBloc', () {
    late TasksRepository localStorageTasksRepository;
    late DeviceInfoRepository deviceInfo;
    late DeleteTaskRepository deleteTaskRepository;
    late RevisionRepository revisionRepository;
    late UpdateTaskRepository updateTaskRepository;
    late CreateTasksListRepository createTasksListRepository;
    late AnalyticsService analyticsService;
    setUpAll(() {
      registerFallbackValue(FakeTask());
      registerFallbackValue(FakeTaskRequestModel());
    });

    setUp(() {
      localStorageTasksRepository = MockTasksRepository();
      deviceInfo = MockDeviceInfoRepository();
      deleteTaskRepository = MockDeleteTaskRepository();
      revisionRepository = MockRevisionRepository();
      updateTaskRepository = MockUpdateTaskRepository();
      createTasksListRepository = MockCreateTasksListRepository();
      analyticsService = MockAnalyticsService();
      when(
        () => createTasksListRepository.post(
          any(),
          extraHeaders: any(named: 'extraHeaders'),
        ),
      ).thenAnswer((_) async => taskResponseModel);
      when(
        () => updateTaskRepository.put(
          any(),
          id: any(named: 'id'),
          extraHeaders: any(named: 'extraHeaders'),
        ),
      ).thenAnswer((_) async => taskResponseModel);
      when(
        () => revisionRepository.get(),
      ).thenAnswer((_) => revision);
      when(
        () => deviceInfo.getInfo(),
      ).thenAnswer((_) async => 'Android 9.0');
      when(
        () => revisionRepository.set(any()),
      ).thenAnswer((_) async => true);
      when(() => localStorageTasksRepository.saveTask(any()))
          .thenAnswer((_) async {});
      when(() => localStorageTasksRepository.dispose())
          .thenAnswer((_) async {});
    });

    EditAddTaskBloc buildBloc() {
      return EditAddTaskBloc(
        updateTaskRepository: updateTaskRepository,
        localStorageTasksRepository: localStorageTasksRepository,
        createTasksListRepository: createTasksListRepository,
        deleteTaskRepository: deleteTaskRepository,
        deviceInfo: deviceInfo,
        analyticsService: analyticsService,
        revisionRepository: revisionRepository,
        initialTask: null,
      );
    }

    group('constructor', () {
      test('works properly', () {
        expect(buildBloc, returnsNormally);
      });

      test('has correct initial state', () {
        expect(
          buildBloc().state,
          equals(const EditAddTaskState()),
        );
      });
    });

    group('EditTaskTitleChanged', () {
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits new state with updated title',
        build: buildBloc,
        act: (bloc) => bloc.add(const EditTaskTitleChanged('newtitle')),
        expect: () => const [
          EditAddTaskState(title: 'newtitle'),
        ],
      );
    });

    group('EditTaskImportanceChanged', () {
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits new state with updated importance',
        build: buildBloc,
        act: (bloc) => bloc
            .add(EditTaskImportanceChanged(Priority.important.toShortString())),
        expect: () => [
          EditAddTaskState(importance: Priority.important.toShortString()),
        ],
      );
    });

    group('EditTaskDeadlineChanged', () {
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits new state with updated deadline',
        build: buildBloc,
        act: (bloc) => bloc.add(
          EditTaskDeadlineChanged(
            DateTime.utc(2023),
          ),
        ),
        expect: () => [
          EditAddTaskState(
            deadline: DateTime.utc(2023).millisecondsSinceEpoch ~/ 1000,
          ),
        ],
      );
    });

    group('EditTaskDeleted', () {
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits delete task',
        setUp: () {
          when(
            () => deleteTaskRepository.delete(
              id: any(named: 'id'),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).thenAnswer((_) async => taskResponseModel);
          when(
            () => localStorageTasksRepository.deleteTask(any()),
          ).thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => EditAddTaskState(
          initialTask: tasks.first,
          title: tasks.first.text,
          importance: tasks.first.importance,
        ),
        act: (bloc) => bloc.add(
          const EditTaskDeleted(),
        ),
        expect: () => [
          EditAddTaskState(
            status: EditAddTaskStatus.loading,
            initialTask: tasks.first,
            title: tasks.first.text,
            importance: tasks.first.importance,
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.success,
            initialTask: tasks.first,
            title: tasks.first.text,
            importance: tasks.first.importance,
          ),
        ],
      );
    });

    group('EditTaskSubmitted', () {
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'attempts to save new todo to repository '
        'if no initial todo was provided',
        setUp: () {
          when(() => localStorageTasksRepository.saveTask(any()))
              .thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => EditAddTaskState(
          title: 'title',
          importance: Priority.important.toShortString(),
        ),
        act: (bloc) => bloc.add(const EditTaskSubmitted()),
        expect: () => [
          EditAddTaskState(
            status: EditAddTaskStatus.loading,
            title: 'title',
            importance: Priority.important.toShortString(),
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.success,
            title: 'title',
            importance: Priority.important.toShortString(),
          ),
        ],
        verify: (bloc) {
          verify(
            () => localStorageTasksRepository.saveTask(
              any(
                that: isA<OnlyTaskModel>()
                    .having((t) => t.text, 'title', equals('title'))
                    .having(
                      (t) => t.importance,
                      'importance',
                      equals(Priority.important.toShortString()),
                    ),
              ),
            ),
          ).called(1);
          verify(
            () => createTasksListRepository.post(
              any(
                that: isA<TaskRequestModel>()
                    .having((t) => t.element.text, 'title', equals('title'))
                    .having(
                      (t) => t.element.importance,
                      'importance',
                      equals(Priority.important.toShortString()),
                    ),
              ),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).called(1);
        },
      );
      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'attempts to save updated todo to repository '
        'if an initial todo was provided',
        setUp: () {
          when(() => localStorageTasksRepository.saveTask(any()))
              .thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => EditAddTaskState(
          initialTask: tasks.first,
          title: tasks.first.text,
          importance: tasks.first.importance,
          deadline: tasks.first.deadline,
        ),
        act: (bloc) => bloc.add(const EditTaskSubmitted()),
        expect: () => [
          EditAddTaskState(
            status: EditAddTaskStatus.loading,
            initialTask: tasks.first,
            title: tasks.first.text,
            importance: tasks.first.importance,
            deadline: tasks.first.deadline,
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.success,
            initialTask: tasks.first,
            title: tasks.first.text,
            importance: tasks.first.importance,
            deadline: tasks.first.deadline,
          ),
        ],
        verify: (bloc) {
          verify(
            () => localStorageTasksRepository.saveTask(
              any(
                that: isA<OnlyTaskModel>()
                    .having((t) => t.id, 'id', equals(tasks.first.id))
                    .having((t) => t.text, 'title', equals(tasks.first.text))
                    .having(
                      (t) => t.importance,
                      'importance',
                      equals(tasks.first.importance),
                    ),
              ),
            ),
          );
          verify(
            () => updateTaskRepository.put(
              any(
                that: isA<TaskRequestModel>()
                    .having((t) => t.element.id, 'id', equals(tasks.first.id))
                    .having(
                      (t) => t.element.text,
                      'title',
                      equals(tasks.first.text),
                    )
                    .having(
                      (t) => t.element.importance,
                      'importance',
                      equals(tasks.first.importance),
                    ),
              ),
              id: any(named: 'id'),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).called(1);
        },
      );

      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits new state with error if save to repository fails',
        build: () {
          when(() => localStorageTasksRepository.saveTask(any()))
              .thenThrow(Exception('oops'));
          return buildBloc();
        },
        seed: () => const EditAddTaskState(
          title: 'title',
          importance: 'low',
        ),
        act: (bloc) => bloc.add(const EditTaskSubmitted()),
        expect: () => const [
          EditAddTaskState(
            status: EditAddTaskStatus.loading,
            title: 'title',
            importance: 'low',
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.failure,
            title: 'title',
            importance: 'low',
          ),
        ],
      );

      blocTest<EditAddTaskBloc, EditAddTaskState>(
        'emits new state with error no connection',
        build: () {
          when(
            () => createTasksListRepository.post(
              any(),
              extraHeaders: any(named: 'extraHeaders'),
            ),
          ).thenThrow(const SocketException('oops'));
          return buildBloc();
        },
        seed: () => const EditAddTaskState(
          title: 'title',
          importance: 'low',
        ),
        act: (bloc) => bloc.add(const EditTaskSubmitted()),
        expect: () => const [
          EditAddTaskState(
            status: EditAddTaskStatus.loading,
            title: 'title',
            importance: 'low',
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.failedInternetCollection,
            title: 'title',
            importance: 'low',
          ),
          EditAddTaskState(
            status: EditAddTaskStatus.success,
            title: 'title',
            importance: 'low',
          ),
        ],
      );
    });
  });
}
