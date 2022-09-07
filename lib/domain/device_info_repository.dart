import 'package:injectable/injectable.dart';
import 'package:todo/data/device_info/device_info_api.dart';

@injectable
class DeviceInfoRepository {
  final DeviceInfoApi _deviceInfo;

  DeviceInfoRepository({required DeviceInfoApi deviceInfo})
      : _deviceInfo = deviceInfo;

  Future<String> getInfo() => _deviceInfo.getInfo();
}
