import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/di/injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String environment) async =>
    await $initGetIt(
      getIt,
      environment: environment,
    );
