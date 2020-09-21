import 'package:flutter/material.dart';
import 'package:responsivestartup/app/responsive/orientation_layout.dart';
import 'package:responsivestartup/app/responsive/responsive_builder.dart';
import 'package:responsivestartup/app/responsive/screen_type_layout.dart';

class HomepageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          body: Center(
            child: Text('This is mobile portrait'),
          ),
        ),
        landscape: Scaffold(
          body: Center(
            child: Text('This is mobile landscape'),
          ),
        ),
      ),
      desktop: OrientationLayout(
        portrait: Scaffold(
          body: Center(
            child: Text(
              'This is desktop portrait',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
        landscape: Scaffold(
          body: Center(
            child: Text(
              'This is desktop landscape',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
      tablet: OrientationLayout(
        portrait: Scaffold(
          body: Center(
            child: Text(
              'This is tablet portrait',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
        landscape: Scaffold(
          body: Center(
            child: Text(
              'This is tablet landscape',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
