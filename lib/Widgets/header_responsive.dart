import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Desktop/landingpage_home/header_desktop.dart';
import 'Mobil/header_mobil.dart';
import 'Tablet/landingpage_home/header_tablet.dart';


class HeaderResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return HeaderDesktop();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile){
          return HeaderMobil();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return HeaderTablet();
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
