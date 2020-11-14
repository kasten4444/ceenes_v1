import 'package:ceenes/Styles/Colors/colors.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Findet euren Film in 40 Sekunden!',
                        style: TextStyle(
                          fontSize: 50,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                        ),
                      ),
                      SelectableText(
                        'Durch unseren Swipe Algorithmus findest du in Sekunden schnelle mit deinen Freunden '
                        'den für euch passenden Film und erstellt dabei noch eine gemeinsame Watchlist. Wie cool ist das denn?',
                        style: TextStyle(
                          fontSize: 25,
                          decoration: TextDecoration.none,
                          color: Colors.black,
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
        )
      ]),
    );
  }
}
