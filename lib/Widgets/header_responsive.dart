import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Desktop/header_desktop.dart';

class HeaderResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return HeaderDesktop();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile){
          return Container(
            color: Colors.blue,
            child: Text("Mobil"),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
            color: Colors.blue,
            child: Text("Tablet"),
          );;
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(
            color: Colors.blue,
            child: Text("Watch"),
          );
        }

        return Container(
          color: Colors.blue,
          child: Text("else"),
        );
      },
    );
  }
}
