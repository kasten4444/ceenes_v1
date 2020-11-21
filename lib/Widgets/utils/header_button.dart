import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

class HeaderButton extends StatelessWidget {
  final String text;

  HeaderButton(this.text);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          this.text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Segoe',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      onPressed: () {},
      //splashColor: my_pink,
      /*
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10))

         */
    );
  }
}
