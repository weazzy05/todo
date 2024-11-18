import 'package:flutter/material.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/key_widget.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    required this.themeData,
    required this.taskModel,
    required this.onToggleCompleted,
    super.key,
  });

  final OnlyTaskModel taskModel;
  final ThemeData themeData;
  final ValueChanged<bool>? onToggleCompleted;

  Color? changeColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.selected)) {
      return themeData.colorScheme.green;
    }
    if (taskModel.importance == Priority.important.toShortString()) {
      return themeData.colorScheme.red;
    }
    return themeData.dividerColor;
  }

  @override
  Widget build(BuildContext context) {
    final remoteConfigService =
        DependenciesScope.of(context).remoteConfigService;
    final importantColor = remoteConfigService.colorImportant();
    return DecoratedBox(
      decoration: BoxDecoration(
        color: taskModel.importance == Priority.important.toShortString()
            ? themeData.colorScheme
                .priorityColor(importantColor)
                .withOpacity(0.16)
            : themeData.cardColor,
      ),
      child: Transform.scale(
        scale: MainScreenConfigure.size20 / Checkbox.width,
        child: Checkbox(
          key: ValueKey(Keys.checkBoxTask + taskModel.id),
          fillColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return themeData.colorScheme.green;
              }
              if (taskModel.importance == Priority.important.toShortString()) {
                return themeData.colorScheme.priorityColor(importantColor);
              }
              return themeData.dividerColor;
            },
          ),
          value: taskModel.done,
          onChanged: onToggleCompleted == null
              ? null
              : (value) => onToggleCompleted!(value!),
        ),
      ),
    );
  }
}
