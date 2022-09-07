import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/task_api/local_task_api.dart';

class MockLocalStorageTaskApi<OnlyTaskModel> extends Mock
    implements Box<OnlyTaskModel> {}

class FakeOnlyTaskModel extends Fake implements OnlyTaskModel {}

void main() {
  group('LocalStorageApi', () {
    setUpAll(() {
      registerFallbackValue(FakeOnlyTaskModel());
    });

    late Box<OnlyTaskModel> plugin;

    final tasks = [
      OnlyTaskModel(
        id: '1',
        text: 'Prog',
        done: true,
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
        done: false,
        createdAt: 1000,
        changedAt: 2000,
        lastUpdatedBy: '3',
      ),
    ];
    setUp(() {
      plugin = MockLocalStorageTaskApi();
      when(() => plugin.values).thenReturn((tasks));
      when(() => plugin.putAt(any(), any())).thenAnswer((_) async => true);
      when(() => plugin.add(any())).thenAnswer((_) async => 4);
      when(() => plugin.clear()).thenAnswer((_) async => -1);
      when(() => plugin.addAll(any())).thenAnswer((_) async => []);
      when(() => plugin.deleteAt(any())).thenAnswer((_) async => true);
      when(() => plugin.close()).thenAnswer((_) async => true);
      when(() => plugin.isOpen).thenAnswer((_) => true);
    });
    LocalStorageTaskService createSubject() {
      return LocalStorageTaskService(box: plugin);
    }

    group('constructor', () {
      test('works properly', () {
        expect(
          createSubject,
          returnsNormally,
        );
      });

      group('initializes the tasks stream', () {
        test('with existing todos if present', () {
          final subject = createSubject();

          expect(subject.getTasks(), emits(tasks));
          verify(
            () => plugin.values,
          ).called(1);
        });

        test('with empty list if no tasks present', () {
          when(() => plugin.values).thenReturn([]);

          final subject = createSubject();

          expect(subject.getTasks(), emits(const <OnlyTaskModel>[]));
          verify(() => plugin.values).called(1);
        });
      });
    });

    test('getTodos returns stream of current list tasks', () {
      expect(
        createSubject().getTasks(),
        emits(tasks),
      );
    });

    group('saveTodo', () {
      test('saves new task', () async {
        final newTask = OnlyTaskModel(
          id: '4',
          text: 'Buy melon',
          done: true,
          createdAt: 1000,
          changedAt: 2000,
          lastUpdatedBy: '4',
        );
        final newTasks = [...tasks, newTask];
        final subject = createSubject();
        expect(subject.saveTasks(newTask), completes);
        expect(subject.getTasks(), emitsInOrder([tasks, newTasks]));
        verify(() => plugin.add(newTask)).called(1);
      });

      test('updates existing task', () {
        final updatedTask = OnlyTaskModel(
          id: '1',
          text: 'Prog',
          done: false,
          createdAt: 1000,
          changedAt: 3000,
          lastUpdatedBy: '1',
        );
        final newTodos = [updatedTask, ...tasks.sublist(1)];

        final subject = createSubject();

        expect(subject.saveTasks(updatedTask), completes);
        expect(subject.getTasks(), emitsInOrder([tasks, newTodos]));

        verify(
          () => plugin.putAt(0, updatedTask),
        ).called(1);
      });
    });
    group('deleteTodo', () {
      test('deletes existing task', () {
        final newTodos = tasks.sublist(1);

        final subject = createSubject();

        expect(subject.deleteTask(tasks[0].id), completes);
        expect(subject.getTasks(), emitsInOrder([tasks, newTodos]));

        verify(
          () => plugin.deleteAt(0),
        ).called(1);
      });

      test(
        'throws TodoNotFoundException if task '
        'with provided id is not found',
        () {
          final subject = createSubject();

          expect(
            () => subject.deleteTask('non-existing-id'),
            throwsA(isA<TodoNotFoundException>()),
          );
        },
      );
    });
  });
}
