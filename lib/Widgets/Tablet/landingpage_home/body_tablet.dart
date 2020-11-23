
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_5.dart';
import 'package:ceenes/Widgets/Tablet/landingpage_home/body_rows/row_x.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_rows/row_6.dart';

class BodyTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_dark_grey,
      child: SingleChildScrollView(
        child: Column(children: [
          Row1_Tablet(),
          Row2_Tablet(),
          Row3_Tablet(),
          Row4_Tablet(),
          Row5_Tablet(),
          Row6_Tablet(),
          RowX_Tablet(),


        ]),
      ),
    );
  }
}
