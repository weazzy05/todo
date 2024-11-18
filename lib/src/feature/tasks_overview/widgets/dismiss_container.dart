import 'package:flutter/material.dart';
import 'package:todo/src/core/constant/styling/colors.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';

class DismissContainerAction extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Alignment alignment;

  const DismissContainerAction({
    required this.icon,
    required this.color,
    required this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        alignment: alignment,
        padding: MainScreenConfigure.paddingH24,
        color: color,
        child: Icon(icon, color: TodoLightColors.white),
      );
}
