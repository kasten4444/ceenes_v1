import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row6 extends StatefulWidget {
  @override
  _Row6State createState() => _Row6State();
}

class _Row6State extends State<Row6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'ABOUT US.',
              style: TextStyle(
                  fontSize: 45,
                  decoration: TextDecoration.none,
                  color: my_pink,
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                width: 900,
                child: SelectableText(
                  'Wir sind zwei Wirtschaftsinformatikstudenten der Universität Paderborn. '
                  'Wir wollen mit diesem Projekt den Freiraum, den uns die der Lehrstuhl für Digitale Märkte'
                  'anbietet, nutzen, und unserer Kreativität freien Lauf lassen.\n'
                  'Deshalb danken wir insbesondere Frau Seutter und Herrn Kundisch, die uns tatkräfitg zur Seite stehen '
                  'und bei der Umsetzung dieses Projekt unterstützen.\n'
                      'Für Kontaktanfragen sendet uns bitte eine Mail an ceenes.app@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Segoe',
                  ),
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //profil Loro
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(profil_loro),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Lorenz P.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  //Profil benji
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(profil_benji),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Benjamin K.',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
