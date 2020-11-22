import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        //color: Colors.grey,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 250,
                ),
                child: Container(
                  //color: Colors.green,
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        '1. CREATE A GROUP',
                        style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.none,
                            color: my_pink,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SelectableText(
                        'Erstell eine Gruppe und lade deine Freunde ein. Lass alle Möglichkeiten'
                        'offen oder triff weitere Beschränkungen. Nutze den QR Code oder den Link um '
                            'deine Freunde'
                        'einzuladen.',
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
              child: Container(
                alignment: Alignment.centerLeft,
                //color: Colors.pinkAccent,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 450, maxWidth: 450),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Image.asset(
                      smartphone_1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
