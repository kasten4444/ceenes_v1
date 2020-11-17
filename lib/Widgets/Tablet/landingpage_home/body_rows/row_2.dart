import 'package:flutter/material.dart';


import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';

class Row2_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            //color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
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
                        fontSize: fontSize_title_tablet,
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
                      fontSize: fontSize_text_tablet,
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
          child: Container(
            //color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight:330, maxWidth:330),
                child: Container(
                    child: Image.asset(
                      smartphone_1,
                    )),
              ),
            ),
          ),

        )
      ],
    );
  }
}
