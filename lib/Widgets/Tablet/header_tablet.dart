import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

import '../utils/header_button.dart';

class HeaderTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_pink.withOpacity(0.2),
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
          HeaderButton('ABOUT'),
          HeaderButton('SHARING'),
          HeaderButton('DEMO'),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: my_pink,
            onPressed: () {},
            child: Text(
              'Create A Group',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
