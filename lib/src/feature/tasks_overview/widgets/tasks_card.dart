import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';
import 'package:todo/src/feature/tasks_overview/widgets/new_task_text_field.dart';

class TasksCard extends StatefulWidget {
  const TasksCard({Key? key, required this.tasks}) : super(key: key);

  final List<OnlyTaskModel> tasks;

  @override
  State<TasksCard> createState() => _TasksCardState();
}

class _TasksCardState extends State<TasksCard> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    var future = Future(() {});
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      for (var i = 0; i < widget.tasks.length; i++) {
        future = future.then((_) {
          return Future.delayed(const Duration(milliseconds: 10), () {
            _listKey.currentState
                ?.insertItem(i, duration: const Duration(milliseconds: 500));
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<InitializationBloc, InitializationState>(
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
            for (int i = 0; i < widget.tasks.length; i++) {
              _listKey.currentState?.removeItem(0, (_, __) => Container());
            }
            if (state.filter == TaskFilter.activeOnly) {
              for (int i = 0;
                  i < widget.tasks.length - state.competedTasks;
                  i++) {
                _listKey.currentState?.insertItem(i);
              }
            } else {
              for (int i = 0; i < state.tasks.length; i++) {
                _listKey.currentState?.insertItem(i);
              }
            }
          },
        ),
        BlocListener<InitializationBloc, InitializationState>(
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
        BlocListener<InitializationBloc, InitializationState>(
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
      child: BlocBuilder<InitializationBloc, InitializationState>(
        builder: (context, state) {
          return Card(
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
                  itemBuilder: (context, index, animation) {
                    return SlideTransition(
                      position: CurvedAnimation(
                        curve: Curves.easeOut,
                        parent: animation,
                      ).drive(
                        (Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: const Offset(0, 0),
                        )),
                      ),
                      child: TaskWidget(
                        listKey: _listKey,
                        index: index,
                        taskModel: widget.tasks[index],
                        onToggleCompleted: (isCompleted) {
                          context.read<InitializationBloc>().add(
                                TaskCompletionToggledInitializationEvent(
                                  task: widget.tasks[index],
                                  isCompleted: isCompleted,
                                  sendingApproach: SendingApproach.checkBox,
                                ),
                              );
                          if (state.filter == TaskFilter.activeOnly) {
                            _listKey.currentState?.removeItem(
                              index,
                              (context, animation) => Container(),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
                const NewTaskTextField(),
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}
