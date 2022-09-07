import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
import 'package:todo/styling/theme.dart';

class MyApp extends StatelessWidget {
  final String bannerName;
  const MyApp({
    required this.bannerName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
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
        BlocProvider(
          create: (context) => NavigationCubit(
            [
              PageConfig(
                location: Routes.mainScreen,
                args: {MainScreenPageArgs.bannerName: bannerName},
              ),
            ],
          ),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: ERouteInformationParser(),
            routerDelegate: ERouterDelegate(context.read<NavigationCubit>()),
            theme: ToDoAppTheme.light,
            darkTheme: ToDoAppTheme.dark,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
