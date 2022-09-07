import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:todo/app/logger.dart';

class RemoteConfigService {
  late FirebaseRemoteConfig _firebaseRemoteConfig;

  RemoteConfigService._internal();

  static RemoteConfigService? _instance;

  static String? _stringColor;

  static Future<RemoteConfigService> initialize() async {
    if (_instance == null) {
      _instance = RemoteConfigService._internal();
      await _instance!._initialize();
    }
    return _instance!;
  }

  static String lazyGetColorImportant() {
    if (_stringColor == null) {
      _instance!._setColorImportant();
    }
    return _stringColor!;
  }

  void _setColorImportant() {
    _stringColor = getValueOrDefault<String>(
      key: ValuesRemoveConfig.useDefaultPriorityColor,
    );
  }

  Future<void> _initialize() async {
    _firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(seconds: 60),
      ),
    );
    await _firebaseRemoteConfig.setDefaults(ValuesRemoveConfig.defaults);
    try {
      await _firebaseRemoteConfig.fetch();
    } catch (e) {
      logger.warning(e);
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
    } catch (e) {
      logger.warning(e);
    }
  }

  T getValueOrDefault<T>({
    required String key,
  }) {
    switch (T) {
      case String:
        var value = _firebaseRemoteConfig.getString(key);
        return value as T;
      case int:
        var value = _firebaseRemoteConfig.getInt(key);
        return value as T;
      case bool:
        bool value = _firebaseRemoteConfig.getBool(key);
        return value as T;
      case double:
        var value = _firebaseRemoteConfig.getDouble(key);
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
