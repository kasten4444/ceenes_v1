import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/utils/header_button.dart';

class HeaderDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'CEENES',
                style: TextStyle(
                    fontSize: 60,
                    decoration: TextDecoration.none, color: Colors.pink[300]),
              ),
            ),
          ),
          Container(
            //color: Colors.amber,
            child: ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                HeaderButton('Wie funktioniert\'s'),
                HeaderButton('Über uns'),
                HeaderButton('Impressum & Datenschutz')
              ],
            ),
          )
        ],
      ),
    );
  }
}
