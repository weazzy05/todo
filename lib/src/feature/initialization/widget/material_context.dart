import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/domain/task.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/domain/tasks_list.dart';
import 'package:todo/features/tasks_overview/bloc/bloc.dart';
import 'package:todo/navigation/cubit_navigation/navigation_cubit.dart';
import 'package:todo/navigation/page_config.dart';
import 'package:todo/navigation/router_delegate.dart';
import 'package:todo/navigation/router_pages.dart';
import 'package:todo/navigation/router_parser.dart';
import 'package:todo/navigation/routes.dart';
import 'package:todo/src/core/constant/localization/localization.dart';
import 'package:todo/src/feature/initialization/model/app_theme.dart';
import 'package:todo/src/feature/settings/widget/settings_scope.dart';

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
    final navigationCubit = NavigationCubit(
      [
        PageConfig(
          location: Routes.mainScreen,
          args: const {MainScreenPageArgs.bannerName: 'dev'},
        ),
      ],
    );
    // TODO(weazzy): go_router or octopus router rewrite
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: ERouteInformationParser(),
      routerDelegate: ERouterDelegate(navigationCubit),
      // TODO(weazzy): Remove this once we have a proper theme
      // theme: ToDoAppTheme.light,
      // darkTheme: ToDoAppTheme.dark,
      theme: settings.appTheme?.lightTheme ?? AppTheme.defaultTheme.lightTheme,
      darkTheme:
          settings.appTheme?.darkTheme ?? AppTheme.defaultTheme.darkTheme,
      themeMode: settings.appTheme?.themeMode ?? ThemeMode.system,
      locale: settings.locale,
      localizationsDelegates: Localization.localizationDelegates,
      supportedLocales: Localization.supportedLocales,
      // TODO(weazzy): Remove this when we have a proper initialization flow
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InitializationBloc(
              localStorageTasksRepository: getIt.get<TasksRepository>(),
              deviceInfo: getIt<DeviceInfoRepository>(),
              patchTaskListApi: getIt<UpdateTasksListRepository>(),
              deleteTaskRepository: getIt<DeleteTaskRepository>(),
              revisionRepository: getIt.get<RevisionRepository>(),
              updateTaskRepository: getIt<UpdateTaskRepository>(),
              getTasksListApi: getIt<GetTasksListRepository>(),
              createTasksListRepository: getIt<CreateTasksListRepository>(),
              analyticsService: getIt<AnalyticsService>(),
            )..add(const StartInitializationEvent()),
          ),
          BlocProvider.value(value: navigationCubit),
        ],
        child: MediaQuery(
          key: _globalKey,
          data: mediaQueryData.copyWith(
            textScaler: TextScaler.linear(
              mediaQueryData.textScaler
                  .scale(settings.textScale ?? 1)
                  .clamp(0.5, 2),
            ),
          ),
          child: child!,
        ),
      ),
    );
  }
}
