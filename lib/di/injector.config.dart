// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../data/auth_api_repository.dart' as _i4;
import '../data/device_info/device_info_api.dart' as _i14;
import '../data/device_info/device_info_plugin_api.dart' as _i15;
import '../data/models/only_task.dart' as _i6;
import '../data/revision_api/revision_api.dart' as _i17;
import '../data/revision_api/revision_shared_api.dart' as _i18;
import '../data/task_api/local_task_api.dart' as _i11;
import '../data/task_api/task_service.dart' as _i10;
import '../domain/analytic_service.dart' as _i3;
import '../domain/device_info_repository.dart' as _i16;
import '../domain/revision_repository.dart' as _i19;
import '../domain/task.dart' as _i8;
import '../domain/task_repository.dart' as _i13;
import '../domain/tasks_list.dart' as _i7;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveRegisterDependency = _$HiveRegisterDependency();
  final deviceInfoPluginModule = _$DeviceInfoPluginModule();
  final sharedRegisterModule = _$SharedRegisterModule();
  gh.factory<_i3.AnalyticsService>(() => _i3.FirebaseAnalyticsService(),
      registerFor: {_dev, _prod});
  gh.factory<_i3.AnalyticsService>(() => _i3.MockAnalyticsService(),
      registerFor: {_test});
  gh.factory<_i4.AuthenticatedAPIHelper>(() => _i4.AuthenticatedAPIHelper());
  gh.singleton<_i4.AuthenticatedAPIRepository>(_i4.AuthenticatedAPIRepository(
      helper: get<_i4.AuthenticatedAPIHelper>()));
  await gh.factoryAsync<_i5.Box<_i6.OnlyTaskModel>>(
      () => hiveRegisterDependency.box,
      preResolve: true);
  gh.factory<_i7.CreateTasksListRepository>(() => _i7.CreateTasksListRepository(
      api: get<_i4.AuthenticatedAPIRepository>()));
  gh.factory<_i8.DeleteTaskRepository>(() =>
      _i8.DeleteTaskRepository(api: get<_i4.AuthenticatedAPIRepository>()));
  gh.factory<_i9.DeviceInfoPlugin>(() => deviceInfoPluginModule.prefs);
  gh.factory<_i8.GetTaskRepository>(
      () => _i8.GetTaskRepository(api: get<_i4.AuthenticatedAPIRepository>()));
  gh.factory<_i7.GetTasksListRepository>(() =>
      _i7.GetTasksListRepository(api: get<_i4.AuthenticatedAPIRepository>()));
  gh.singleton<_i10.ITaskService>(
      _i11.LocalStorageTaskService(box: get<_i5.Box<_i6.OnlyTaskModel>>()));
  await gh.factoryAsync<_i12.SharedPreferences>(
      () => sharedRegisterModule.prefs,
      preResolve: true);
  gh.factory<_i13.TasksRepository>(
      () => _i13.TasksRepository(taskApi: get<_i10.ITaskService>()));
  gh.factory<_i8.UpdateTaskRepository>(() =>
      _i8.UpdateTaskRepository(api: get<_i4.AuthenticatedAPIRepository>()));
  gh.factory<_i7.UpdateTasksListRepository>(() => _i7.UpdateTasksListRepository(
      api: get<_i4.AuthenticatedAPIRepository>()));
  gh.singleton<_i14.DeviceInfoApi>(
      _i15.DeviceInfoPluginApi(deviceInfoPlugin: get<_i9.DeviceInfoPlugin>()));
  gh.factory<_i16.DeviceInfoRepository>(
      () => _i16.DeviceInfoRepository(deviceInfo: get<_i14.DeviceInfoApi>()));
  gh.lazySingleton<_i17.RevisionApi>(() =>
      _i18.RevisionSharedApi(sharedPreferences: get<_i12.SharedPreferences>()));
  gh.factory<_i19.RevisionRepository>(
      () => _i19.RevisionRepository(revisionApi: get<_i17.RevisionApi>()));
  return get;
}

class _$HiveRegisterDependency extends _i11.HiveRegisterDependency {}

class _$DeviceInfoPluginModule extends _i15.DeviceInfoPluginModule {}

class _$SharedRegisterModule extends _i18.SharedRegisterModule {}
