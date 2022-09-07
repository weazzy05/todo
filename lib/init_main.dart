import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/app/bloc_observer.dart';
import 'package:todo/app/error_handler.dart';
import 'package:todo/app/logger.dart';
import 'package:todo/domain/remote_config_service.dart';
import 'package:todo/firebase_options.dart';

Future<void> initMain() async {
  Bloc.observer = AppBlocObserver();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initLogger();
  ErrorHandler.init();
  logger.info('Start main');
  await RemoteConfigService.initialize();
}
