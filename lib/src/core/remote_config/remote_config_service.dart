import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:todo/src/core/utils/refined_logger.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  RemoteConfigService({FirebaseRemoteConfig? firebaseRemoteConfig})
      : _firebaseRemoteConfig =
            firebaseRemoteConfig ?? FirebaseRemoteConfig.instance;

  String colorImportant() => getValueOrDefault<String>(
        key: ValuesRemoveConfig.useDefaultPriorityColor,
      );

  Future<void> init() async {
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(seconds: 60),
      ),
    );
    await _firebaseRemoteConfig.setDefaults(ValuesRemoveConfig.defaults);
    try {
      await _firebaseRemoteConfig.fetch();
    } catch (e, s) {
      logger.warn(
        'Failed to initialize remote config.',
        error: e,
        stackTrace: s,
      );
    } finally {
      await _firebaseRemoteConfig.activate();
    }
  }

  ///for testing
  Future<void> forceFetch() async {
    try {
      await _firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await _firebaseRemoteConfig.fetchAndActivate();
    } catch (e, s) {
      logger.warn(
        'Failed to force fetch remote config.',
        error: e,
        stackTrace: s,
      );
    }
  }

  T getValueOrDefault<T>({
    required String key,
  }) {
    switch (T) {
      case String:
        final value = _firebaseRemoteConfig.getString(key);
        return value as T;
      case int:
        final value = _firebaseRemoteConfig.getInt(key);
        return value as T;
      case bool:
        final value = _firebaseRemoteConfig.getBool(key);
        return value as T;
      case double:
        final value = _firebaseRemoteConfig.getDouble(key);
        return value as T;
      default:
        throw Exception('Implementation not found');
    }
  }
}

class ValuesRemoveConfig {
  static const useDefaultPriorityColor = 'use_default_priority_color';

  static const defaults = {useDefaultPriorityColor: 'default'};
}
