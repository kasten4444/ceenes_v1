import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class Part4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height ,
        padding: EdgeInsets.only(left: 20, right: 20),
        child:
        Column(children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: SelectableText(
                        '3. REVIEW RANKING',
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
                    smartphone_3,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left:50, top:50, right:50),
                child: SelectableText(
                        'Nachdem alle mit dem Swipen fertig sind, schaut ihr euch gemeinsam euer Ranking der Filme an. Ihr wisst jetzt, was ihr gucken könnt.',
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
