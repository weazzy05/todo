import 'package:flutter/material.dart';
import 'package:todo/src/core/router/routes.dart';
import 'package:todo/src/core/utils/key_widget.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';

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
          TaskRoute($extra: taskModel).push(context);
        },
        child: Icon(
          Icons.info_outline,
          color: themeData.secondaryHeaderColor,
        ),
      ),
    );
  }
}
