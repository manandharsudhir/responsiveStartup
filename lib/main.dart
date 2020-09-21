import 'package:device_preview/device_preview.dart';
import "package:flutter/material.dart";
import 'ui/views/homepage/homepage_view.dart';

void main() => runApp(DevicePreview(
      builder: (context) => MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: HomepageView(),
    );
  }
}
