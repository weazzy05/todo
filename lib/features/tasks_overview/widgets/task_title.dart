import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/styling/text_styles.dart';

class TaskTextWidget extends StatelessWidget {
  const TaskTextWidget({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

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
            color: taskModel.done == true ? themeData.hintColor : null,
            decoration:
                taskModel.done == true ? TextDecoration.lineThrough : null,
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
