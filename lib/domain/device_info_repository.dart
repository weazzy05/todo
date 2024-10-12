import 'package:todo/data/device_info/device_info_api.dart';

class DeviceInfoRepository {
  final DeviceInfoApi _deviceInfo;

  DeviceInfoRepository({required DeviceInfoApi deviceInfo})
      : _deviceInfo = deviceInfo;

  Future<String> getInfo() => _deviceInfo.getInfo();
}
