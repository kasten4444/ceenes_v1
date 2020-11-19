import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';
import 'package:flutter/material.dart';


import 'package:flutter/widgets.dart';



import 'package:ceenes/assets/Styles/Colors/colors.dart';

class Row5_Tablet extends StatefulWidget {
  @override
  _Row5State createState() => _Row5State();
}

class _Row5State extends State<Row5_Tablet> {

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Container(
                //alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'STAY IN TOUCH',
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
                    SizedBox(
                      height: 15,
                    ),
                    SelectableText(
                      'Teste unsere neuen Features als erster aus und werden informiert, wenn'
                      'es was neues gibt.',
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

        ],
      ),
    );
  }
}
