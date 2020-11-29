import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Part2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: MediaQuery.of(context).size.height,
          //color: Colors.grey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: SelectableText(
                  '1. CREATE A GROUP',
                  style: TextStyle(
                      fontSize: 35,
                      decoration: TextDecoration.none,
                      color: my_pink,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                //color: Colors.pinkAccent,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300, maxWidth: 450),
                  child: Image.asset(
                    smartphone_1,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: SelectableText(
                  'Erstell eine Gruppe und lade deine Freunde ein. Lass alle Möglichkeiten'
                  'offen oder triff weitere Beschränkungen. Nutze den QR Code oder den Link um deine Freunde einzuladen.',
                  style: TextStyle(
                    fontSize: 17,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Segoe',
                  ),
                ),
              )
            ],
          )),
    );
  }
}
