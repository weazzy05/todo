import 'dart:developer' as dev;

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

final logger = Logger('');

void initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (log) {
      if (!kIsWeb) FirebaseCrashlytics.instance.log(log.message);
      dev.log(
        log.message,
        time: log.time,
        sequenceNumber: log.sequenceNumber,
        level: log.level.value,
        name: log.loggerName,
        zone: log.zone,
        error: log.error,
        stackTrace: log.stackTrace,
      );
    },
  );
}
