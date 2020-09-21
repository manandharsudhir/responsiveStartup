import 'package:flutter/material.dart';
import 'package:responsivestartup/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.orientation,
    this.deviceScreenType,
    this.localWidgetSize,
    this.screenSize,
  });

  @override
  String toString() {
    return "Orientation:$orientation, Device Sreen Type: $deviceScreenType, ScreenSize: $screenSize,loacalWidgetSize:$localWidgetSize";
  }
}
