import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/error_handler.dart';
import 'package:todo/app/my_app.dart';
import 'package:todo/di/injector.dart';
import 'package:todo/domain/analytic_service.dart';

import 'init_main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
    () async {
      await initMain();
      await configureDependencies(Environment.prod);
      await getIt<AnalyticsService>().setCurrentScreen(
        screenName: '/mainScreen',
      );
      runApp(
        const MyApp(
          bannerName: 'PROD',
        ),
      );
    },
    ErrorHandler.recordError,
  );
}
