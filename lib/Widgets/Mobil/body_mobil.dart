
import 'package:ceenes/Widgets/Mobil/body_parts/footer_mobile.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_3.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_4.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_5.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_6.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_parts/part_1.dart';
import 'body_parts/part_2.dart';




class BodyMobil extends StatelessWidget {
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
            Part1(),
            Part2(),
            Part3(),
            Part4(),
            Part5(),
            Part6(),
            FooterMobil(),

          ]),
        ),
      ),
    );
  }
}