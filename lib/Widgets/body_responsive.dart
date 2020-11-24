import 'package:ceenes/Widgets/Tablet/landingpage_home/body_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Desktop/landingpage_home/body_desktop.dart';
import 'Mobil/body_mobil.dart';

class BodyResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return BodyDesktop();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return BodyMobil();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return BodyTablet();
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
