import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_rows/row_5.dart';
import 'body_rows/row_6.dart';
import 'body_rows/row_x.dart';

class BodyDesktop extends StatefulWidget {
  @override
  _BodyDesktopState createState() => _BodyDesktopState();
}

class _BodyDesktopState extends State<BodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: my_dark_grey,
      child: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Row1(),
            Row2(),
            Row3(),
            Row4(),
            Row5(),
            Row6(),
            RowX(),
          ]),
        ),
      ),
    );
  }
}
