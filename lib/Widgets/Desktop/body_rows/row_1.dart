import 'package:flutter/material.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:ceenes/Styles/Colors/colors.dart';

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(80, 50, 20, 20),
            child: Container(
              //color: Colors.green,
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
                        fontSize: 80,
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
                      fontSize: 30,
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
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 500, maxWidth: 500),
              child: Container(
                  child: Image.asset(
                    zwei_auf_dem_sofa,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
