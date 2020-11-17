import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row4_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    '3. REVIEW RANKINGS',
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
                    'Nachdem alle mit dem Swipen fertig sind, schaut ihr euch gemeinsam euer Ranking '
                        'der Filme an. Ihr wisst jetzt, was ihr guccken könnt.',
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
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight:380, maxWidth:380),
              child: Container(
                  child: Image.asset(
                    smartphone_3,
                  )),
            ),
          ),

        )
      ],
    );
  }
}
