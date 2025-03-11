
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/responsive_helper/device_information.dart';

extension ResponsiveHelperExtension on BuildContext {
  // Get the DeviceInfo singleton instance
  DeviceInfo get deviceInfo => DeviceInfo();

  bool get isLandscape => deviceInfo.isLandscape(this);

  bool get isTablet => deviceInfo.isTablet(this);

  // Get the screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  // Get the screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  // Dynamic scaling factor for landscape mode
  double get landscapeScalingFactor {
    if (isLandscape) {
      // Adjust scaling based on screen width
      if (screenWidth > 1000) {
        return 0.6; // Smaller scaling for very wide screens (e.g., tablets in landscape)
      } else if (screenWidth < 600) {
        return 0.7; // Medium scaling for wider screens
      } else {
        return 0.4; // Default scaling for phones in landscape
      }
    }
    return 1.0; // No scaling in portrait mode
  }

  // Dynamic scaling factor for tablets
  double get tabletScalingFactor {
    if (isTablet) {
      // Adjust scaling based on screen width
      if (screenWidth > 1000) {
        return 0.5; // Smaller scaling for large tablets
      } else {
        return 0.55; // Default scaling for smaller tablets
      }
    }
    return 1.0; // No scaling for phones
  }

  double setButtonWidth(double width) {
    if (isLandscape && isTablet) {
      return width.w * 0.5; // Adjust this factor as needed
    }
    return width.w * landscapeScalingFactor; // Default width in portrait mode
  }

  // Responsive button height
  double setButtonHeight(double height) {
    if (isLandscape) {
      // Increase button height slightly in landscape mode
      return height.h * 1.8; // Adjust this factor as needed
    }
    return height.h * landscapeScalingFactor; // Default height in portrait mode
  }

  // Responsive font size
  double setSp(double fontSize) {
    if (isTablet && isLandscape) {
      return fontSize.sp * 0.3;
    } else if (isTablet) {
      return fontSize.sp * tabletScalingFactor * 0.8;
    } else {
      {
        return fontSize.sp * landscapeScalingFactor * tabletScalingFactor;
      }
    }
  }

  double setRadius(double radius) => radius.r * tabletScalingFactor;

  // Responsive height
  double setHeight(double height) => height.h * tabletScalingFactor;

  // Responsive width
  double setWidth(double width) =>
      width.w * landscapeScalingFactor * tabletScalingFactor;
}
