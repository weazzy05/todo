import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart' hide Environment;
import 'package:todo/di/injector.config.dart';
import 'package:todo/src/feature/initialization/model/environment.dart';

/// getIt is a singleton instance of GetIt
final getIt = GetIt.instance;

/// Initializes the dependency injection system
@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies(Environment environment) async =>
    await getIt.init(environment: environment.name);
