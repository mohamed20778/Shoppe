import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class DeviceInfo {
  // Singleton instance
  static final DeviceInfo _instance = DeviceInfo._internal();
  factory DeviceInfo() => _instance;
  DeviceInfo._internal();

  bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  bool isTablet(BuildContext buildContext) {
    final deviceType = Device.get();
    return deviceType.isTablet;
  }
}
