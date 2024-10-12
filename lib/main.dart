import 'dart:async';

import 'package:todo/src/core/utils/refined_logger.dart';
import 'package:todo/src/feature/initialization/logic/app_runner.dart';

void main() => runZonedGuarded(
      () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    );
