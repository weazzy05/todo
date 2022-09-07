import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/styling/assets_name.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/utils/priority.dart';

class PriorityIconWidget extends StatelessWidget {
  final String taskModelImportance;

  const PriorityIconWidget({
    Key? key,
    required this.taskModelImportance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    if (taskModelImportance == Priority.important.toShortString()) {
      return Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: SvgPicture.asset(
          AssetsNameFile.highPrioritySvg,
          color: themeData.colorScheme.priorityColor(),
        ),
      );
    } else if (taskModelImportance == Priority.low.toShortString()) {
      return Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SvgPicture.asset(
          AssetsNameFile.lowPrioritySvg,
          color: themeData.colorScheme.gray,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
