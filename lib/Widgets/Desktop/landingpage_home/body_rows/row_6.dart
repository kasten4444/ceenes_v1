import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

import '../../../utils/header_button.dart';

class Row6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Image.asset(icon_pink),
              height: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: my_pink, blurRadius: 5, offset: Offset(2, 2))
              ]),
            ),
          ),
          HeaderButton('ABOUT US'),
          HeaderButton('CONTACT US'),
          HeaderButton('DATENSCHUTZ'),


        ],
      ),
    );
  }
}
