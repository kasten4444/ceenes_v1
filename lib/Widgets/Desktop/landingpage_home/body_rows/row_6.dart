import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Row6 extends StatefulWidget {
  @override
  _Row6State createState() => _Row6State();
}

class _Row6State extends State<Row6> {
  _launchURL() async {
    const url =
        'https://de.linkedin.com/in/benjamin-kasten-a68466155?challengeId=AQGWWfDdKCKNjwAAAXYVZyJsoBJBTAUesYA_Y30jgQvYM8XZnLmkfnDvN58rnfxhg077ug-e2Nqb_PqTIvsQiITK9rtxoP1jFw&submissionId=ab2c09ea-1410-4c16-c6a2-30032c387a20';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://de.linkedin.com/in/lorenz-pott-156a6513b';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: Container(
              //color: Colors.amber,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 800),
                    child: SelectableText.rich(
                      TextSpan(
                          text:
                              'Wir sind zwei Wirtschaftsinformatikstudenten der Universität Paderborn. '
                              'Wir wollen mit diesem Projekt den Freiraum, den uns die der Lehrstuhl für Digitale Märkte '
                              'anbietet, nutzen, und unserer Kreativität freien Lauf lassen.\n'
                              'Deshalb danken wir insbesondere Frau Seutter und Herrn Kundisch, die uns tatkräfitg zur Seite stehen '
                              'und bei der Umsetzung dieses Projekt unterstützen.\n'
                              'Für Kontaktanfragen sendet uns bitte eine Mail an ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontFamily: 'Segoe'),
                          children: [
                            TextSpan(
                              text: 'ceenes.app@gmail.com',
                              style: TextStyle(
                                  color: my_pink,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Segoe'),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //profil Loro
                        GestureDetector(
                          onTap:_launchURL2,
                          child:                        Padding(
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
                                Container(
                                    height: 20,
                                    child:Image.asset(linkedIn, color: Colors.white,)
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        //Profil benji
                        GestureDetector(
                            onTap:_launchURL,
                            child:Padding(
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
                                  ),
                                  Container(
                                      height: 20,
                                      child:Image.asset(linkedIn, color: Colors.white,)
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
