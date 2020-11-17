
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_1.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_2.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_3.dart';
import 'package:ceenes/Widgets/Desktop/landingpage_home/body_rows/row_4.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_dark_grey,
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: my_dark_grey,
            child: SizedBox(
              height: 50,
            ),
          ),
          Row1(),
          SizedBox(height: 50,),
          Row2(),
          SizedBox(height: 50,),
          Row3(),
          SizedBox(height: 50,),
          Row4(),
          SizedBox(height: 50,),

        ]),
      ),
    );
  }
}
