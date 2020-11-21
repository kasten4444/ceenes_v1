
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_rows/row_5.dart';
import 'body_rows/row_6.dart';


class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: my_dark_grey,
        child: SingleChildScrollView(
          child: Column(children: [
            /*
            Container(
              color: my_dark_grey,
              child: SizedBox(
                height: 50,
              ),
            ),

             */
            Row1(),
            Row2(),
            Row3(),
            Row4(),
            Row5(),
            Row6(),

          ]),
        ),
      ),
    );
  }
}
