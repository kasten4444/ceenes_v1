import 'package:ceenes/Widgets/Desktop/landingpage_home/body_desktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'dart:html' as html;
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../main.dart';
import '../../utils/header_button.dart';

class HeaderTablet extends StatefulWidget {
  @override
  HeaderTabletState createState() => HeaderTabletState();
}

class HeaderTabletState extends State<HeaderTablet> {
  final _formKey = GlobalKey<FormState>();

// ...somewhere in your Flutter app...
  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['ceenes.app@gmail.com'],
      subject: 'Deine Kontaktanfrage',
      body: 'Deine Anfrage:\n',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }
  _launchIG() async {
    const url = 'https://www.instagram.com/ceenes.official/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: FlatButton(
                child: Image.asset(icon_pink),
                onPressed: () {
                  html.window.location.reload();
                },
              ),
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'CEENES',
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Segoe',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8),
            ),
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: my_pink,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.grey[100],
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Klicke auf das Email Icon, um uns eine Mail zu schreiben:",
                            style: TextStyle(color: Colors.black87, fontSize: 20),
                          ),
                        ),
                        Center(
                          child: FlatButton(
                            child: Icon(
                              Icons.email_rounded,
                              color: my_pink,
                              size: 40,
                            ),
                            onPressed: () {
                              launchMailto();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sollte sich kurz danach nicht dein Emailprogramm öffnen,\nschreib uns manuell eine Mail an\:",
                            style: TextStyle(color: Colors.black87, fontSize: 20),
                          ),
                        ),
                        Center(
                          child: SelectableText(
                            "ceenes.app@gmail.com",
                            style: TextStyle(color: my_pink, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Wir freuen uns von dir zu hören und melden uns\numgehend bei dir zurück.",
                            style: TextStyle(color: Colors.black87, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              'CONTACT US',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
