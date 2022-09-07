import 'package:flutter/material.dart';
import 'package:todo/styling/colors.dart';

class ToDoAppTheme {
  static ThemeData get light {
    return ThemeData.light().copyWith(
      dividerColor: TodoLightColors.supportSeparator,
      primaryColor: TodoLightColors.blue,
      cardColor: TodoLightColors.white,
      hintColor: TodoLightColors.labelTertiary,
      disabledColor: TodoLightColors.labelDisable,
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(
          TodoLightColors.blue.withOpacity(0.3),
        ),
        thumbColor: MaterialStateProperty.all(
          TodoLightColors.blue,
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: TodoLightColors.labelPrimary,
        backgroundColor: TodoLightColors.backPrimary,
      ),
      secondaryHeaderColor: TodoLightColors.labelTertiary,
      backgroundColor: TodoLightColors.backSecondary,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: TodoLightColors.white,
        backgroundColor: TodoLightColors.blue,
      ),
      scaffoldBackgroundColor: TodoLightColors.backPrimary,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
      ),
      toggleableActiveColor: TodoLightColors.blue,
      errorColor: TodoLightColors.red,
    );
  }

//TODO: make darktheme
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      dividerColor: TodoDarkColors.supportSeparator,
      primaryColor: TodoDarkColors.blue,
      cardColor: TodoDarkColors.backSecondary,
      secondaryHeaderColor: TodoDarkColors.labelTertiary,
      hintColor: TodoDarkColors.labelTertiary,
      disabledColor: TodoDarkColors.labelDisable,
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(
          TodoDarkColors.blue.withOpacity(0.3),
        ),
        thumbColor: MaterialStateProperty.all(
          TodoDarkColors.blue,
        ),
      ),
      backgroundColor: TodoDarkColors.backSecondary,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: TodoDarkColors.white,
        backgroundColor: TodoDarkColors.blue,
      ),
      scaffoldBackgroundColor: TodoDarkColors.backPrimary,
      appBarTheme: const AppBarTheme(
        foregroundColor: TodoDarkColors.labelPrimary,
        backgroundColor: TodoDarkColors.backPrimary,
      ),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
      ),
      toggleableActiveColor: TodoDarkColors.blue,
      errorColor: TodoDarkColors.red,
    );
  }
}
