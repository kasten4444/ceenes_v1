import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

import '../utils/header_button.dart';

class HeaderMobil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_dark_grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20, top: 10, bottom: 10),
            child: Container(
              child: Image.asset(icon_pink),
              height: 40,
              decoration: BoxDecoration(
                  /*boxShadow: [
                BoxShadow(color: my_pink, blurRadius: 5, offset: Offset(2, 2))


              ]*/
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
                child:FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(2.0)),
                color: my_pink,
                onPressed: () {},
                child: Text(
                  'SHARE',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ),
          
        ],
      ),
    );
  }
}
