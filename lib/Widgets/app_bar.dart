import 'package:ceenes/Styles/Colors/colors.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:ceenes/Widgets/utils/header_button.dart';
import 'package:flutter/material.dart';

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
