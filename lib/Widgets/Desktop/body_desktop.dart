
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_rows/row_1.dart';
import 'body_rows/row_2.dart';
import 'body_rows/row_3.dart';
import 'body_rows/row_4.dart';




class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row1(),
        SizedBox(height: 50,),
        Row2(),
        SizedBox(height: 50,),
        Row3(),
        SizedBox(height: 50,),
        Row4(),
        SizedBox(height: 50,),
        //Row5(),

      ]),
    );
  }
}
