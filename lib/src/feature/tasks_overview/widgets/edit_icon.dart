import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';
import 'package:todo/navigation/cubit_navigation/navigation_cubit.dart';
import 'package:todo/src/core/utils/key_widget.dart';

class EditTaskIconWidget extends StatelessWidget {
  const EditTaskIconWidget({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  final OnlyTaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      color: themeData.cardColor,
      child: InkWell(
        key: ValueKey(Keys.iconEditTask + taskModel.id),
        borderRadius: MainScreenConfigure.iconBorderRadius,
        onTap: () {
          context.read<NavigationCubit>().goToEditAddScreen(taskModel);
        },
        child: Icon(
          Icons.info_outline,
          color: themeData.secondaryHeaderColor,
        ),
      ),
    );
  }
}
