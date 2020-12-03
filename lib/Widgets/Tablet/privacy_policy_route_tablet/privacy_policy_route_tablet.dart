import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ceenes/assets/my_assets/privacy_policy/privacy_policy.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:flutter_html/style.dart';

// ignore: camel_case_types
class PrivacyPolicy_Route_Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 60,
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Html(
                    data: privacy_policy,
                    style: {
                      "html": Style(
                        backgroundColor: Colors.white,
                        color: Colors.black87,
                        fontSize: FontSize.large
                      )
                    },
                  ),
                )


              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            child: Image.asset(icon_pink),
                            height: 40,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Text(
                          'Datenschutzerklärung',
                          style: TextStyle(color: Colors.black87, fontSize: 40),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: my_pink,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Schließen',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
