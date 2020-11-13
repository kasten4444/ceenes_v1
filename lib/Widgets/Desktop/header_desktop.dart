import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/utils/header_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:ceenes/Styles/Colors/colors.dart';

class HeaderDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'CEENES',
                      style: TextStyle(
                          fontSize: 60,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Trueno Bold'),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
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
          Container(
            //color: Colors.amber,
            child: ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                HeaderButton('ABOUT'),
                HeaderButton('SHARING'),
                HeaderButton('DEMO')
              ],
            ),
          )
        ],
      ),
    );
  }
}
