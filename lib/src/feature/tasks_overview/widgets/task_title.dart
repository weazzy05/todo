import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/src/core/constant/styling/text_styles.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

class TaskTextWidget extends StatelessWidget {
  const TaskTextWidget({
    required this.taskModel,
    super.key,
  });

  final OnlyTaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          taskModel.text,
          maxLines: 3,
          style: TodoTextStyles.body.copyWith(
            fontWeight: FontWeight.w400,
            decorationColor: themeData.hintColor,
            color: taskModel.done ? themeData.hintColor : null,
            decoration: taskModel.done ? TextDecoration.lineThrough : null,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        if (taskModel.deadline != null)
          Text(
            DateFormat.yMMMMd(Localizations.localeOf(context).toString())
                .format(
              DateTime.fromMillisecondsSinceEpoch(taskModel.deadline! * 1000),
            ),
            style: TextStyle(
              color: themeData.hintColor,
            ),
          ),
      ],
    );
  }
}
