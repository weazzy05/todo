import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

abstract class DeviceInfoDataProvider {
  const DeviceInfoDataProvider();

  Future<String> getInfo();
}

class DeviceInfoDataProviderImpl implements DeviceInfoDataProvider {
  final DeviceInfoPlugin deviceInfoPlugin;

  DeviceInfoDataProviderImpl({required this.deviceInfoPlugin});

  @override
  Future<String> getInfo() async {
    const defaultValue = '0';
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      return iosDeviceInfo.identifierForVendor ?? defaultValue;
    } else if (Platform.isAndroid) {
      final androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      return androidDeviceInfo.id;
    }
    return defaultValue;
  }
}
