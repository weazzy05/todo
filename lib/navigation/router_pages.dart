import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/unknown_screen.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/domain/task.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/domain/tasks_list.dart';
import 'package:todo/features/edit_add_task/bloc/bloc.dart';
import 'package:todo/features/edit_add_task/view/edit_add_task_screen.dart';
import 'package:todo/features/tasks_overview/view/main_screen.dart';

class MainScreenPageArgs {
  static const bannerName = 'banner_name';
}

class MainScreenPage extends CustomPageParent {
  final String? bannerName;

  const MainScreenPage({required this.bannerName, required super.args});

  @override
  Widget build(BuildContext context) {
    return Banner(
      location: BannerLocation.topEnd,
      message: bannerName ?? Environment.dev.toUpperCase(),
      child: const MainScreen(),
    );
  }
}

class UnknownScreenPage extends CustomPageParent {
  final String route;

  const UnknownScreenPage({required super.args, required this.route});

  @override
  Widget build(BuildContext context) {
    return UnknownPage(
      unknownRouteName: route,
    );
  }
}

class EditAddTaskScreenPageArgs {
  static const task = 'task';
}

class EditAddTaskScreenPage extends CustomPageParent {
  final OnlyTaskModel? task;

  const EditAddTaskScreenPage({required this.task, required super.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditAddTaskBloc(
        deviceInfo: getIt<DeviceInfoRepository>(),
        initialTask: task,
        analyticsService: getIt<AnalyticsService>(),
        localStorageTasksRepository: getIt<TasksRepository>(),
        createTasksListRepository: getIt<CreateTasksListRepository>(),
        deleteTaskRepository: getIt<DeleteTaskRepository>(),
        updateTaskRepository: getIt<UpdateTaskRepository>(),
        revisionRepository: getIt<RevisionRepository>(),
      ),
      child: const EditTaskScreen(),
    );
  }
}

typedef TransitionAnimationBuilder = Widget Function(
  BuildContext,
  Animation<double>,
  Animation<double>,
  Widget,
);

abstract class CustomPageParent extends Page {
  final Map<String, dynamic> args;
  final int transitionDuration, reverseTransitionDuration; //milliseconds

  final TransitionAnimationBuilder? animationBuilder;

  const CustomPageParent({
    required this.args,
    this.transitionDuration = 600,
    this.reverseTransitionDuration = 600,
    this.animationBuilder,
  });

  ///создайте содержимое страницы, переопределив эту функцию
  Widget build(BuildContext context);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder<dynamic>(
      settings: this,
      transitionDuration: Duration(milliseconds: transitionDuration),
      reverseTransitionDuration:
          Duration(milliseconds: reverseTransitionDuration),
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) =>
          animationBuilder?.call(
            context,
            animation,
            secondaryAnimation,
            child,
          ) ??
          _defaultAnimationBuilder(
            context,
            animation,
            secondaryAnimation,
            child,
          ),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> animation2,
      ) =>
          build(context),
    );
  }

  Widget _defaultAnimationBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.easeOutQuart;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }
}
