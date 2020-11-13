import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ceenes/Widgets/Desktop/body_desktop.dart';

class BodyResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          //return desktop body
          return BodyDesktop();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
            color: Colors.blue,
            child: Text("Body Mobil"),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
            color: Colors.blue,
            child: Text("Body Tablet"),
          );;
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(
            color: Colors.blue,
            child: Text("Body Watch"),
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
