import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'body_rows/row_5.dart';
import 'body_rows/row_6.dart';
import 'body_rows/row_x.dart';

class BodyDesktop extends StatefulWidget {
  // ignore: deprecated_member_use

  @override
  BodyDesktopState createState() => BodyDesktopState();
}

class BodyDesktopState extends State<BodyDesktop> {
  void scroll() {
    print('gep');
  }

  var col = [
    Row1(),

    Row2(),
    Row3(),
    Row4(),
    Row5(),
    Row6(),
    RowX(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: my_dark_grey,
      child: Container(
        child: ScrollablePositionedList.builder(
          itemCount: col.length,
          itemBuilder: (context, index) {
            return col[index];
          },
        ),
      ),
    );
  }

/*
  @override
  Widget build(BuildContext context) {
    return Material(
      color: my_dark_grey,
      child: Container(
        child: SingleChildScrollView(
          controller: _myController,
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

   */
}
