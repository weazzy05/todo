import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/data/revision_api/revision_shared_api.dart';

void main() {
  group('SharedPreferencesUtil', () {
    group('getCounter', () {
      test('returns 0 if no value is stored in SharedPreferences', () async {
        SharedPreferences.setMockInitialValues({});

        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();

        final RevisionSharedApi revisionSharedApi =
            RevisionSharedApi(sharedPreferences: sharedPreferences);

        const expectedCounter = 0;
        final actualCounter = revisionSharedApi.get();

        expect(expectedCounter, actualCounter);
      });

      test('returns the correct value stored in SharedPreferences', () async {
        const counterValue = 42;
        SharedPreferences.setMockInitialValues(
          {RevisionSharedApi.revision: counterValue},
        );
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();

        final RevisionSharedApi revisionSharedApi =
            RevisionSharedApi(sharedPreferences: sharedPreferences);

        const expectedCount = counterValue;
        final actualCounter = revisionSharedApi.get();
        expect(expectedCount, actualCounter);
      });
    });

    group('setCounter', () {
      test('stores the correct count value in SharedPreferences', () async {
        SharedPreferences.setMockInitialValues({});
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();

        final RevisionSharedApi revisionSharedApi =
            RevisionSharedApi(sharedPreferences: sharedPreferences);
        const countValue = 42;

        revisionSharedApi.set(countValue);
        const expectedCounter = countValue;
        final actualCounter =
            sharedPreferences.getInt(RevisionSharedApi.revision);

        expect(expectedCounter, actualCounter);
      });
    });
  });
}
