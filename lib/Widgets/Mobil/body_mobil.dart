
import 'package:ceenes/Widgets/Mobil/body_parts/footer_mobile.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_3.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_4.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_5.dart';
import 'package:ceenes/Widgets/Mobil/body_parts/part_6.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'body_parts/part_1.dart';
import 'body_parts/part_2.dart';



final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
class BodyMobil extends StatefulWidget {

  @override
  _BodyMobilState createState() => _BodyMobilState();
}

class _BodyMobilState extends State<BodyMobil> {
  var col = [

    Part1(),

    Container(
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
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Icon(Icons.arrow_downward, color: Colors.black87, size: 35,),
          ],
        ),
      ),
    ),
    Part2(),
    Part3(),
    Part4(),
    Part5(),
    Part6(),
    FooterMobil(),];

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