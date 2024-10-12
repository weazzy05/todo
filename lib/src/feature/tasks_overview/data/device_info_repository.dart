import 'package:todo/src/feature/tasks_overview/data/device_info_data_provider.dart';

class DeviceInfoRepository {
  final DeviceInfoDataProvider _deviceDataProvider;

  DeviceInfoRepository({required DeviceInfoDataProvider deviceDataProvider})
      : _deviceDataProvider = deviceDataProvider;

  Future<String> getInfo() => _deviceDataProvider.getInfo();
}
