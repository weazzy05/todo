import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import 'logger.dart';

class ErrorHandler {
  static void init() {
    FlutterError.onError = _recordFlutterError;
    logger.info('ErrorHandler initialized');
  }

  static void recordError(Object error, StackTrace stackTrace) {
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
    }
    logger.severe(
      error.toString(),
      error,
      stackTrace,
    );
  }

  static void _recordFlutterError(FlutterErrorDetails error) {
    logger.severe(error.toStringShort(), error.exception, error.stack);
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordFlutterError(error, fatal: true);
    }
  }

  const ErrorHandler._();
}
