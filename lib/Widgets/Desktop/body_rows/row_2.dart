import 'package:flutter/material.dart';


import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: Container(
              //alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    '1. CREATE A GROUP',
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            color: my_pink,
                          ),
                        ],
                        fontSize: 35,
                        decoration: TextDecoration.none,
                        color: my_pink,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  SelectableText(
                    'Erstellel eine Gruppe und lade deine Freunde ein. Lass alle Möglichkeiten'
                    'offen oder triff weite Beschränkungen. Nutze den QR Code oder den Link um deine Freunde'
                    'einzuladen.',
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
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight:380, maxWidth:380),
              child: Container(
                  child: Image.asset(
                    smartphone_1,
                  )),
            ),
          ),

        )
      ],
    );
  }
}
