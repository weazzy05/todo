import 'package:flutter/material.dart';
import 'package:todo/features/tasks_overview/view/main_screen.dart';
import 'package:todo/styling/colors.dart';

class DismissContainerAction extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Alignment alignment;

  const DismissContainerAction({
    Key? key,
    required this.icon,
    required this.color,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: MainScreenConfigure.paddingH24,
      color: color,
      child: Icon(icon, color: TodoLightColors.white),
    );
  }
}
