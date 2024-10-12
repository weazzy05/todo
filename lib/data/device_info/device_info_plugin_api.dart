import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:todo/data/device_info/device_info_api.dart';

class DeviceInfoPluginApi implements DeviceInfoApi {
  final DeviceInfoPlugin deviceInfoPlugin;

  DeviceInfoPluginApi({required this.deviceInfoPlugin});

  @override
  Future<String> getInfo() async {
    const defaultValue = '0';
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      return iosDeviceInfo.identifierForVendor ?? defaultValue;
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      return androidDeviceInfo.id ?? defaultValue;
    }
    return defaultValue;
  }
}
