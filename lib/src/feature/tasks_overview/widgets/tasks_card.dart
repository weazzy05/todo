import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';
import 'package:todo/src/feature/tasks_overview/widgets/new_task_text_field.dart';

class TasksCard extends StatefulWidget {
  const TasksCard({required this.tasks, super.key});

  final List<OnlyTaskModel> tasks;

  @override
  State<TasksCard> createState() => _TasksCardState();
}

class _TasksCardState extends State<TasksCard> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      for (var i = 0; i < widget.tasks.length; i++) {
        _listKey.currentState
            ?.insertItem(i, duration: const Duration(milliseconds: 500));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = TaskOverviewScope.of(context).taskOverviewBloc;
    return MultiBlocListener(
      listeners: [
        BlocListener<TaskOverviewBloc, TaskOverviewState>(
          bloc: bloc,
          listenWhen: (prev, curr) {
            if ((prev.filter == TaskFilter.all &&
                    curr.filter == TaskFilter.activeOnly) ||
                prev.filter == TaskFilter.activeOnly &&
                    curr.filter == TaskFilter.all) {
              return true;
            } else {
              return false;
            }
          },
          listener: (context, state) {
            for (var i = 0; i < widget.tasks.length; i++) {
              _listKey.currentState?.removeItem(0, (_, __) => Container());
            }
            if (state.filter == TaskFilter.activeOnly) {
              for (var i = 0;
                  i < widget.tasks.length - state.competedTasks;
                  i++) {
                _listKey.currentState?.insertItem(i);
              }
            } else {
              for (var i = 0; i < state.tasks.length; i++) {
                _listKey.currentState?.insertItem(i);
              }
            }
          },
        ),
        BlocListener<TaskOverviewBloc, TaskOverviewState>(
          bloc: bloc,
          listenWhen: (prev, curr) {
            if (prev.tasks.length < curr.tasks.length) {
              return true;
            } else {
              return false;
            }
          },
          listener: (context, state) {
            _listKey.currentState?.insertItem(
              widget.tasks.length,
              duration: const Duration(milliseconds: 200),
            );
          },
        ),
        BlocListener<TaskOverviewBloc, TaskOverviewState>(
          bloc: bloc,
          listenWhen: (prev, curr) {
            if (prev.tasks.length > curr.tasks.length) {
              return true;
            } else {
              return false;
            }
          },
          listener: (context, state) {
            _listKey.currentState?.removeItem(
              widget.tasks.length - 1,
              (_, __) => Container(),
            );
          },
        ),
      ],
      child: BlocBuilder<TaskOverviewBloc, TaskOverviewState>(
        bloc: bloc,
        builder: (context, state) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              AnimatedList(
                physics: const NeverScrollableScrollPhysics(),
                key: _listKey,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 8),
                // initialItemCount: widget.tasks.length,
                itemBuilder: (context, index, animation) => SlideTransition(
                  position: CurvedAnimation(
                    curve: Curves.easeOut,
                    parent: animation,
                  ).drive(
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ),
                  ),
                  child: TaskWidget(
                    listKey: _listKey,
                    index: index,
                    taskModel: widget.tasks[index],
                    onToggleCompleted: (isCompleted) {
                      TaskOverviewScope.of(context).toggleTask(
                        task: widget.tasks[index],
                        isCompleted: isCompleted,
                        sendingApproach: SendingApproach.checkBox,
                      );
                      if (state.filter == TaskFilter.activeOnly) {
                        _listKey.currentState?.removeItem(
                          index,
                          (context, animation) => Container(),
                        );
                      }
                    },
                  ),
                ),
              ),
              const NewTaskTextField(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
