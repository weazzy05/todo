// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/adapters.dart' as _i744;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../data/auth_api_repository.dart' as _i32;
import '../data/device_info/device_info_api.dart' as _i383;
import '../data/device_info/device_info_plugin_api.dart' as _i276;
import '../data/models/only_task.dart' as _i1024;
import '../data/revision_api/revision_api.dart' as _i220;
import '../data/revision_api/revision_shared_api.dart' as _i896;
import '../data/task_api/local_task_api.dart' as _i918;
import '../data/task_api/task_service.dart' as _i550;
import '../domain/analytic_service.dart' as _i1039;
import '../domain/device_info_repository.dart' as _i709;
import '../domain/revision_repository.dart' as _i852;
import '../domain/task.dart' as _i952;
import '../domain/task_repository.dart' as _i1;
import '../domain/tasks_list.dart' as _i800;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedRegisterModule = _$SharedRegisterModule();
    final deviceInfoPluginModule = _$DeviceInfoPluginModule();
    final hiveRegisterDependency = _$HiveRegisterDependency();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedRegisterModule.prefs,
      preResolve: true,
    );
    gh.factory<_i833.DeviceInfoPlugin>(() => deviceInfoPluginModule.prefs);
    await gh.factoryAsync<_i744.Box<_i1024.OnlyTaskModel>>(
      () => hiveRegisterDependency.box,
      preResolve: true,
    );
    gh.factory<_i32.AuthenticatedAPIHelper>(
        () => _i32.AuthenticatedAPIHelper());
    gh.factory<_i1039.AnalyticsService>(
      () => _i1039.FirebaseAnalyticsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i1039.AnalyticsService>(
      () => _i1039.MockAnalyticsService(),
      registerFor: {_test},
    );
    gh.singleton<_i32.AuthenticatedAPIRepository>(() =>
        _i32.AuthenticatedAPIRepository(
            helper: gh<_i32.AuthenticatedAPIHelper>()));
    gh.singleton<_i383.DeviceInfoApi>(() => _i276.DeviceInfoPluginApi(
        deviceInfoPlugin: gh<_i833.DeviceInfoPlugin>()));
    gh.singleton<_i550.ITaskService>(() => _i918.LocalStorageTaskService(
        box: gh<_i744.Box<_i1024.OnlyTaskModel>>()));
    gh.factory<_i800.GetTasksListRepository>(() => _i800.GetTasksListRepository(
        api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i800.CreateTasksListRepository>(() =>
        _i800.CreateTasksListRepository(
            api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i800.UpdateTasksListRepository>(() =>
        _i800.UpdateTasksListRepository(
            api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i952.GetTaskRepository>(() =>
        _i952.GetTaskRepository(api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i952.UpdateTaskRepository>(() =>
        _i952.UpdateTaskRepository(api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i952.DeleteTaskRepository>(() =>
        _i952.DeleteTaskRepository(api: gh<_i32.AuthenticatedAPIRepository>()));
    gh.factory<_i1.TasksRepository>(
        () => _i1.TasksRepository(taskApi: gh<_i550.ITaskService>()));
    gh.lazySingleton<_i220.RevisionApi>(() => _i896.RevisionSharedApi(
        sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.factory<_i709.DeviceInfoRepository>(() =>
        _i709.DeviceInfoRepository(deviceInfo: gh<_i383.DeviceInfoApi>()));
    gh.factory<_i852.RevisionRepository>(
        () => _i852.RevisionRepository(revisionApi: gh<_i220.RevisionApi>()));
    return this;
  }
}

class _$SharedRegisterModule extends _i896.SharedRegisterModule {}

class _$DeviceInfoPluginModule extends _i276.DeviceInfoPluginModule {}

class _$HiveRegisterDependency extends _i918.HiveRegisterDependency {}
