import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/data/revision_api/revision_api.dart';

@module
abstract class SharedRegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@LazySingleton(as: RevisionApi)
class RevisionSharedApi implements RevisionApi {
  final SharedPreferences _sharedPreferences;

  RevisionSharedApi({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;
  @visibleForTesting
  static const revision = 'revision';

  @override
  int get() {
    return _sharedPreferences.getInt(revision) ?? 0;
  }

  @override
  Future<void> set(int newRevision) async {
    await _sharedPreferences.setInt(revision, newRevision);
  }
}
