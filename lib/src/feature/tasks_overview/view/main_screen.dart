import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/core/constant/styling/colors.dart';
import 'package:todo/src/core/router/routes.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/key_widget.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';
import 'package:todo/src/feature/tasks_overview/widgets/app_bar.dart';
import 'package:todo/src/feature/tasks_overview/widgets/check_box.dart';
import 'package:todo/src/feature/tasks_overview/widgets/dismiss_container.dart';
import 'package:todo/src/feature/tasks_overview/widgets/edit_icon.dart';
import 'package:todo/src/feature/tasks_overview/widgets/priority_icon.dart';
import 'package:todo/src/feature/tasks_overview/widgets/task_title.dart';
import 'package:todo/src/feature/tasks_overview/widgets/tasks_card.dart';

class MainScreenConfigure {
  static const paddingH24 = EdgeInsets.symmetric(horizontal: 24);
  static const paddingH18V8 = EdgeInsets.symmetric(
    horizontal: 18,
    vertical: 8,
  );
  static BorderRadius iconBorderRadius = BorderRadius.circular(25);
  static const dividerH = 0.5;
  static const sizedBoxH28 = 28.0;
  static const sizedBoxW18 = 18.0;
  static const sizedBoxW15 = 15.0;
  static const sizedBoxW6 = 6.0;
  static const sizedBoxW34 = 34.0;
  static const size50 = 50.0;
  static const size20 = 20.0;
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = TaskOverviewScope.of(context).taskOverviewBloc;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const TaskRoute().push<void>(context);
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<TaskOverviewBloc, TaskOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          final themeData = Theme.of(context);

          if (state.status != InitializationStatus.success &&
              state.status != InitializationStatus.failedInternetCollection) {
            return const Center(
              child: SizedBox(
                width: MainScreenConfigure.size50,
                height: MainScreenConfigure.size50,
                child: CircularProgressIndicator(),
              ),
            );
          }
          return SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                CustomSliverAppBar(
                  themeData: themeData,
                  state: state,
                ),
                SliverToBoxAdapter(
                  child: TasksCard(
                    tasks: state.filteredTasks.toList(),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: MainScreenConfigure.sizedBoxH28,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  final OnlyTaskModel taskModel;
  final ValueChanged<bool>? onToggleCompleted;
  final int index;
  final GlobalKey<AnimatedListState> listKey;

  const TaskWidget({
    required this.taskModel,
    required this.index,
    required this.listKey,
    super.key,
    this.onToggleCompleted,
  });

  bool dismissTask(
    BuildContext context,
    DismissDirection direction,
    TaskOverviewState state,
  ) {
    if (direction == DismissDirection.startToEnd) {
      TaskOverviewScope.of(context).toggleTask(
        task: taskModel,
        isCompleted: true,
      );
      if (state.filter == TaskFilter.activeOnly) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (value) => listKey.currentState?.removeItem(
            index,
            (_, __) => Container(),
          ),
        );
        return true;
      }
      return false;
    } else {
      TaskOverviewScope.of(context).taskDelete(taskModel);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = TaskOverviewScope.of(context).taskOverviewBloc;
    return ClipRect(
      child: BlocBuilder<TaskOverviewBloc, TaskOverviewState>(
        bloc: bloc,
        builder: (context, state) => Dismissible(
          key: ValueKey(Keys.dismissableTaskWidget + taskModel.id),
          background: const DismissContainerAction(
            alignment: Alignment.centerLeft,
            color: TodoLightColors.green,
            icon: Icons.check,
          ),
          secondaryBackground: const DismissContainerAction(
            alignment: Alignment.centerRight,
            color: TodoLightColors.red,
            icon: Icons.delete,
          ),
          confirmDismiss: (DismissDirection direction) async =>
              dismissTask(context, direction, state),
          child: Container(
            padding: MainScreenConfigure.paddingH18V8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.5),
                  child: SizedBox(
                    height: MainScreenConfigure.size20,
                    width: MainScreenConfigure.size20,
                    child: CheckBoxWidget(
                      themeData: Theme.of(context),
                      onToggleCompleted: onToggleCompleted,
                      taskModel: taskModel,
                    ),
                  ),
                ),
                if (taskModel.importance != Priority.basic.toShortString())
                  const SizedBox(
                    width: MainScreenConfigure.sizedBoxW18,
                  )
                else
                  const SizedBox(
                    width: MainScreenConfigure.sizedBoxW15,
                  ),
                PriorityIconWidget(taskModelImportance: taskModel.importance),
                if (taskModel.importance != Priority.basic.toShortString())
                  const SizedBox(
                    width: MainScreenConfigure.sizedBoxW6,
                  )
                else
                  const SizedBox.shrink(),
                Expanded(
                  child: TaskTextWidget(taskModel: taskModel),
                ),
                EditTaskIconWidget(taskModel: taskModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
