import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/src/core/constant/localization/localization.dart';
import 'package:todo/src/core/router/routes.dart';
import 'package:todo/src/feature/initialization/model/app_theme.dart';
import 'package:todo/src/feature/settings/widget/settings_scope.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatefulWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  // This global key is needed for [MaterialApp]
  // to work properly when Widgets Inspector is enabled.
  static final _globalKey = GlobalKey();

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/dashboard',
      routes: $appRoutes,
    );
  }

  @override
  Widget build(BuildContext context) {
    final settings = SettingsScope.settingsOf(context);
    final mediaQueryData = MediaQuery.of(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: settings.appTheme?.lightTheme ?? AppTheme.defaultTheme.lightTheme,
      darkTheme:
          settings.appTheme?.darkTheme ?? AppTheme.defaultTheme.darkTheme,
      themeMode: settings.appTheme?.themeMode ?? ThemeMode.system,
      locale: settings.locale,
      localizationsDelegates: Localization.localizationDelegates,
      supportedLocales: Localization.supportedLocales,
      // TODO(weazzy): Remove this when we have a proper initialization flow
      builder: (context, child) => MediaQuery(
        key: MaterialContext._globalKey,
        data: mediaQueryData.copyWith(
          textScaler: TextScaler.linear(
            mediaQueryData.textScaler
                .scale(settings.textScale ?? 1)
                .clamp(0.5, 2),
          ),
        ),
        child: TaskOverviewScope(child: child!),
      ),
    );
  }
}
