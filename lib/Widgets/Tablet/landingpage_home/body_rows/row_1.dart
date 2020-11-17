import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';


// ignore: camel_case_types
class Row1_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'CEENES.',
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: my_pink,
                            ),
                          ],
                          fontSize: 50,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15,),
                    SelectableText(
                      'Wir haben es uns zur Aufgabe gemacht, es zu schaffen, dass du mit '
                          'deinen Freundinnen und Freunden innerhalb von 2 Minuten den perfekten Films findest.',
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.none,
                        color: my_blue,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 400, maxWidth: 400),
                child: Container(
                    child: Image.asset(
                      zwei_auf_dem_sofa,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
