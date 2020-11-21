import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery. of(context). size. height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left:250, top: 180),
                child: Container(
                  //alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        '3. REVIEW RANKINGS',
                        style: TextStyle(
                            fontSize: 45,
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
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.white,
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
                    margin: EdgeInsets.only(right: 100),
                      child: Image.asset(
                        smartphone_3,
                      )),
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
