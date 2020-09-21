import 'package:flutter/material.dart';
import 'package:responsivestartup/app/responsive/size_information.dart';
import 'package:responsivestartup/app/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizeingInformation) builder;

  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(
          boxConstraints.maxWidth,
          boxConstraints.maxHeight,
        ),
      );
      return builder(context, sizingInformation);
    });
  }
}
