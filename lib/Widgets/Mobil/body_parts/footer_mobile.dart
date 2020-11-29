import 'package:ceenes/Widgets/Desktop/privacy_policy_route/privacy_policy_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';

import '../../utils/header_button.dart';

class FooterMobil extends StatelessWidget {
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
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'DATENSCHUTZ',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Segoe',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => PrivacyPolicy_Route()));
            },
          ),
        ],
      ),
    );
  }
}
