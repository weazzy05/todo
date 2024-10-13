import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/src/feature/edit_add_task/bloc/bloc.dart';
import 'package:todo/src/feature/edit_add_task/view/edit_add_task_screen.dart';
import 'package:todo/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:todo/src/feature/tasks_overview/view/main_screen.dart';
import 'package:todo/src/feature/tasks_overview/view/task_overview_scope.dart';

part 'routes.g.dart';

/// DashboardRoute is a route for the dashboard screen.
@TypedGoRoute<DashboardRoute>(path: '/dashboard')
class DashboardRoute extends GoRouteData {
  /// DashboardRoute constructor
  const DashboardRoute();

  @override
  Widget build(
      BuildContext context,
      GoRouterState state,
      ) =>
      const TaskOverviewScope(child: MainScreen());
}

// TODO(weazzy): remove $extra param from TaskRoute, migrate to id

/// TaskRoute is a route for the task screen.
@TypedGoRoute<TaskRoute>(path: '/task')
class TaskRoute extends GoRouteData {
  /// TaskRoute constructor
  const TaskRoute({this.$extra});

  final OnlyTaskModel? $extra;

  @override
  CustomTransitionPage<void> buildPage(
      BuildContext context,
      GoRouterState state,
      ) {
    final deviceInfo = DependenciesScope.of(context).deviceInfoRepository;
    final localStorageTasksRepository =
        DependenciesScope.of(context).tasksRepository;
    final analyticsService = DependenciesScope.of(context).analyticsService;
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: BlocProvider(
        create: (context) => EditAddTaskBloc(
          deviceInfo: deviceInfo,
          initialTask: $extra,
          analyticsService: analyticsService,
          localStorageTasksRepository: localStorageTasksRepository,
        ),
        child: const EditTaskScreen(),
      ),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          ) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeOutQuart;

        final tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
