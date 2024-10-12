import 'package:flutter/material.dart';
import 'package:todo/domain/remote_config_service.dart';
import 'package:todo/src/core/constant/styling/colors.dart';
import 'package:todo/src/core/utils/priority.dart';

extension CustomColorScheme on ColorScheme {
  Color get green => brightness == Brightness.light
      ? TodoLightColors.green
      : TodoDarkColors.green;
  Color get gray => brightness == Brightness.light
      ? TodoLightColors.gray
      : TodoDarkColors.gray;
  Color get red =>
      brightness == Brightness.light ? TodoLightColors.red : TodoDarkColors.red;
  Color priorityColor(String stringColor) {
    final stringColor = RemoteConfigService().colorImportant();
    if (RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$').hasMatch(stringColor)) {
      return stringColor.toColor();
    } else {
      if (brightness == Brightness.light) {
        return TodoLightColors.red;
      } else {
        return TodoDarkColors.red;
      }
    }
  }
}

extension ColorExtension on String {
  Color toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension ParseToString on Priority {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
