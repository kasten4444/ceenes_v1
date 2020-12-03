import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height ,
        //color: Colors.grey,
        child:
        Column(children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: SelectableText(
                        '2. START SWIPING',
                        style: TextStyle(
                            fontSize: 35,
                            decoration: TextDecoration.none,
                            color: my_pink,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold),),),
          
               Container(
                alignment: Alignment.center,
                //color: Colors.pinkAccent,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300, maxWidth: 450),
                  child: Image.asset(
                    smartphone_2,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: SelectableText(
                        'Jeder deiner Freunde hat nun einen Link bekommen und kann anfangen zu swipen. Bewerte jeden Film, sodass ihr am Ende ein Ranking habt. Worauf wartet ihr noch?',
                        style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.none,
                          color: Colors.black87,
                          fontFamily: 'Segoe',
                        ),
                      ),)
              
           

        ],)
      ),
    );
  }
}
