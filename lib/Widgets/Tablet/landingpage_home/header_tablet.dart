import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

import '../../utils/header_button.dart';

class HeaderTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_dark_sec,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Image.asset(icon_pink),
              height: 40,
            ),
          ),
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Wie funktioniert\'s?',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Segoe',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
            },
          ),
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Über uns',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Segoe',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: my_pink,
            onPressed: () {},
            child: Text(
              'SHARE',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
