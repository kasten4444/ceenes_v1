
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'utils/header_button.dart';

class MyAppBar {
  static getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        //color: Colors.green,
                        child: Image.asset(
                      icon_blue,
                      height: 60,
                    )),
                  ],
                ),
              ),
            ),

            HeaderButton('ABOUT'),
            HeaderButton('SHARING'),
            HeaderButton('DEMO')
          ],
        ),
      ),
    );
  }
}
