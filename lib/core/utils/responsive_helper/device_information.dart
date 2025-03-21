import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class DeviceInfo {
  // Singleton instance
  static final DeviceInfo _instance = DeviceInfo._internal();
  factory DeviceInfo() => _instance;
  DeviceInfo._internal();

  // Check if the device is in landscape mode
  bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  // Check if the device is a tablet
  bool isTablet(BuildContext buildContext) {
    final deviceType = Device.get();
    return deviceType.isTablet; // Correct way to check for tablets
  }
}