import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/src/core/constant/localization/localization.dart';
import 'package:todo/src/core/navigation/cubit_navigation/navigation_cubit.dart';
import 'package:todo/src/core/navigation/page_config.dart';
import 'package:todo/src/core/navigation/router_delegate.dart';
import 'package:todo/src/core/navigation/router_pages.dart';
import 'package:todo/src/core/navigation/router_parser.dart';
import 'package:todo/src/core/navigation/routes.dart';
import 'package:todo/src/feature/initialization/model/app_theme.dart';
import 'package:todo/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo/src/feature/settings/widget/settings_scope.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  // This global key is needed for [MaterialApp]
  // to work properly when Widgets Inspector is enabled.
  static final _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final settings = SettingsScope.settingsOf(context);
    final mediaQueryData = MediaQuery.of(context);
    final analyticsService = DependenciesScope.of(context).analyticsService;
    // TODO(weazzy): go_router or octopus router rewrite
    return BlocProvider(
      create: (context) => NavigationCubit(
        [
          PageConfig(
            location: Routes.mainScreen,
            args: const {MainScreenPageArgs.bannerName: 'dev'},
          ),
        ],
        analyticsService: analyticsService,
      ),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: ERouteInformationParser(),
            routerDelegate: ERouterDelegate(context.read<NavigationCubit>()),
            // TODO(weazzy): Remove this once we have a proper theme
            // theme: ToDoAppTheme.light,
            // darkTheme: ToDoAppTheme.dark,
            theme: settings.appTheme?.lightTheme ??
                AppTheme.defaultTheme.lightTheme,
            darkTheme:
                settings.appTheme?.darkTheme ?? AppTheme.defaultTheme.darkTheme,
            themeMode: settings.appTheme?.themeMode ?? ThemeMode.system,
            locale: settings.locale,
            localizationsDelegates: Localization.localizationDelegates,
            supportedLocales: Localization.supportedLocales,
            // TODO(weazzy): Remove this when we have a proper initialization flow
            builder: (context, child) => MediaQuery(
              key: _globalKey,
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
        },
      ),
    );
  }
}
