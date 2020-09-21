import 'package:flutter/material.dart';
import 'package:responsivestartup/app/responsive/responsive_builder.dart';

class HomepageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Text(
              sizingInformation.toString(),
            ),
          ),
        );
      },
    );
  }
}
