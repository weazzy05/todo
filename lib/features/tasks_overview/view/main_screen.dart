import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/app/logger.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/features/tasks_overview/bloc/bloc.dart';
import 'package:todo/features/tasks_overview/filter_tasks.dart';
import 'package:todo/features/tasks_overview/widgets/app_bar.dart';
import 'package:todo/features/tasks_overview/widgets/check_box.dart';
import 'package:todo/features/tasks_overview/widgets/dismiss_container.dart';
import 'package:todo/features/tasks_overview/widgets/edit_icon.dart';
import 'package:todo/features/tasks_overview/widgets/priority_icon.dart';
import 'package:todo/features/tasks_overview/widgets/task_title.dart';
import 'package:todo/features/tasks_overview/widgets/tasks_card.dart';
import 'package:todo/navigation/cubit_navigation/navigation_cubit.dart';
import 'package:todo/styling/colors.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/utils/key_widget.dart';
import 'package:todo/utils/priority.dart';

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
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<NavigationCubit>().goToEditAddScreen();
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocListener<InitializationBloc, InitializationState>(
        listenWhen: (previous, current) {
          return previous.status != current.status;
        },
        listener: _listenerInitializationBloc,
        child: BlocBuilder<InitializationBloc, InitializationState>(
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
      ),
    );
  }

  void _listenerInitializationBloc(
    BuildContext context,
    InitializationState state,
  ) {
    if (state.status == InitializationStatus.failedInternetCollection) {
      logger.info('Network Connection Error');
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.no_internet_connection,
            ),
          ),
        );
    } else if (state.status == InitializationStatus.failure) {
      context.read<InitializationBloc>().add(const StartInitializationEvent());
    }
  }
}

class TaskWidget extends StatelessWidget {
  final OnlyTaskModel taskModel;
  final ValueChanged<bool>? onToggleCompleted;
  final int index;
  final GlobalKey<AnimatedListState> listKey;

  const TaskWidget({
    Key? key,
    this.onToggleCompleted,
    required this.taskModel,
    required this.index,
    required this.listKey,
  }) : super(key: key);

  bool dismissTask(
    BuildContext context,
    DismissDirection direction,
    InitializationState state,
  ) {
    if (direction == DismissDirection.startToEnd) {
      context.read<InitializationBloc>().add(
            TaskCompletionToggledInitializationEvent(
              sendingApproach: SendingApproach.dismissible,
              task: taskModel,
              isCompleted: true,
            ),
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
      context.read<InitializationBloc>().add(
            TaskDeleteInitializationEvent(taskModel),
          );
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BlocBuilder<InitializationBloc, InitializationState>(
        builder: (context, state) {
          return Dismissible(
            key: ValueKey(Keys.dismissableTaskWidget + taskModel.id),
            dragStartBehavior: DragStartBehavior.start,
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
            confirmDismiss: (DismissDirection direction) async {
              return dismissTask(context, direction, state);
            },
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
                  taskModel.importance != Priority.basic.toShortString()
                      ? const SizedBox(
                          width: MainScreenConfigure.sizedBoxW18,
                        )
                      : const SizedBox(
                          width: MainScreenConfigure.sizedBoxW15,
                        ),
                  PriorityIconWidget(taskModelImportance: taskModel.importance),
                  taskModel.importance != Priority.basic.toShortString()
                      ? const SizedBox(
                          width: MainScreenConfigure.sizedBoxW6,
                        )
                      : const SizedBox.shrink(),
                  Expanded(
                    child: TaskTextWidget(taskModel: taskModel),
                  ),
                  EditTaskIconWidget(taskModel: taskModel),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
