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
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BodyTablet extends StatefulWidget {

  @override
  _BodyTabletState createState() => _BodyTabletState();
}

final ItemScrollController itemScrollController = ItemScrollController();

final ItemPositionsListener itemPositionsListener = ItemPositionsListener
    .create();

class _BodyTabletState extends State<BodyTablet> {


  var col = [
    Row1_Tablet(),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //color: Colors.blue,
        child: GestureDetector(
          onTap: () {
            itemScrollController.scrollTo(
                index: 2,
                duration: Duration(seconds: 2),
                curve: Curves.fastLinearToSlowEaseIn);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'So funktioniert\'s',
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
              Icon(Icons.arrow_downward, color: Colors.black87, size: 40,),
              /*
              Container(
                constraints: BoxConstraints(maxHeight: 30),
                child: Image.asset(
                  arrow,
                  color: Colors.white,
                ),
              ),
              */
            ],
          ),
        ),
      ),
    ),
    Row2_Tablet(),
    Row3_Tablet(),
    Row4_Tablet(),
    Row5_Tablet(),
    Row6_Tablet(),
    RowX_Tablet(),

  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Material(
        color: Colors.white,
        child: Container(
          child: ScrollablePositionedList.builder(
            itemCount: col.length,
            itemBuilder: (context, index) {
              return col[index];
            },
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,

          ),
        ),
      ),
    );
  }
}
