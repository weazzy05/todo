import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/data/revision_api/revision_api.dart';

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
