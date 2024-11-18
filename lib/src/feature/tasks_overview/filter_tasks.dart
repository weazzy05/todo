import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

enum TaskFilter {
  all,
  activeOnly,
}

extension TodosViewFilterX on TaskFilter {
  bool apply(OnlyTaskModel task) {
    switch (this) {
      case TaskFilter.all:
        return true;
      case TaskFilter.activeOnly:
        return !task.done;
    }
  }

  Iterable<OnlyTaskModel> applyAll(Iterable<OnlyTaskModel> tasks) =>
      tasks.where(apply);
}
