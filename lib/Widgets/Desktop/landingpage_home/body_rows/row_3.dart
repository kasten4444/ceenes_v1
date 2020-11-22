import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 450, maxWidth: 450),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Image.asset(
                      smartphone_2,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 250,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        '2. START SWIPING',
                        style: TextStyle(
                            fontSize: 45,
                            decoration: TextDecoration.none,
                            color: my_pink,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SelectableText(
                        'Jeder hat jeder deiner Freunde einen Link bekommen und kann anfangen zu swipen. Bewerte jeden'
                        'Film, sodass ihr am Ende ein Ranking habt, welcher Film von den meisten geschaut werden will.',
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
            )
          ],
        ),
      ),
    );
  }
}
