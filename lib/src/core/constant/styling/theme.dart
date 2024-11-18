import 'package:flutter/material.dart';
import 'package:todo/src/core/constant/styling/colors.dart';

class ToDoAppTheme {
  static ThemeData get light => ThemeData.light().copyWith(
        dividerColor: TodoLightColors.supportSeparator,
        primaryColor: TodoLightColors.blue,
        cardColor: TodoLightColors.white,
        hintColor: TodoLightColors.labelTertiary,
        disabledColor: TodoLightColors.labelDisable,
        switchTheme: SwitchThemeData(
          trackColor: WidgetStateProperty.all(
            TodoLightColors.blue.withOpacity(0.3),
          ),
          thumbColor: WidgetStateProperty.all(
            TodoLightColors.blue,
          ),
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: TodoLightColors.labelPrimary,
          backgroundColor: TodoLightColors.backPrimary,
        ),
        secondaryHeaderColor: TodoLightColors.labelTertiary,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: TodoLightColors.white,
          backgroundColor: TodoLightColors.blue,
        ),
        scaffoldBackgroundColor: TodoLightColors.backPrimary,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: TodoLightColors.backSecondary,
          errorColor: TodoLightColors.red,
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            }
            if (states.contains(WidgetState.selected)) {
              return TodoLightColors.blue;
            }
            return null;
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            }
            if (states.contains(WidgetState.selected)) {
              return TodoLightColors.blue;
            }
            return null;
          }),
        ),
      );

// TODO(weazzy): make darktheme
  static ThemeData get dark => ThemeData.dark().copyWith(
        dividerColor: TodoDarkColors.supportSeparator,
        primaryColor: TodoDarkColors.blue,
        cardColor: TodoDarkColors.backSecondary,
        secondaryHeaderColor: TodoDarkColors.labelTertiary,
        hintColor: TodoDarkColors.labelTertiary,
        disabledColor: TodoDarkColors.labelDisable,
        switchTheme: SwitchThemeData(
          trackColor: WidgetStateProperty.all(
            TodoDarkColors.blue.withOpacity(0.3),
          ),
          thumbColor: WidgetStateProperty.all(
            TodoDarkColors.blue,
          ),
        ),
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
          backgroundColor: TodoDarkColors.backSecondary,
          errorColor: TodoDarkColors.red,
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            }
            if (states.contains(WidgetState.selected)) {
              return TodoDarkColors.blue;
            }
            return null;
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            }
            if (states.contains(WidgetState.selected)) {
              return TodoDarkColors.blue;
            }
            return null;
          }),
        ),
      );
}
