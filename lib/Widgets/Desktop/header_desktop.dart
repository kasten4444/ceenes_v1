import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/utils/header_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ceenes/Styles/Icons/my_icons.dart';
import 'package:ceenes/Styles/Colors/colors.dart';

class HeaderDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Image.asset(icon_pink),
            height: 80,
          ),
        ),
        HeaderButton('ABOUT'),
        HeaderButton('SHARING'),
        HeaderButton('DEMO'),
      ],
    );
  }
}
