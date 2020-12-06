import 'package:ceenes/Widgets/Desktop/landingpage_home/body_desktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'dart:html' as html;
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import '../utils/header_button.dart';

class HeaderMobil extends StatefulWidget {
  @override
  HeaderMobilState createState() => HeaderMobilState();
}

class HeaderMobilState extends State<HeaderMobil> {
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
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: FlatButton(
              child: Image.asset(icon_pink),
              onPressed: () {
                html.window.location.reload();
              },
            ),
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'CEENES',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Segoe',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8),
            ),
          ),
          Row(
            children: [
              IconButton(
                //height: 30,
                icon: Icon(
                  Icons.mail,
                  color: Colors.black,
                  //size: 30,
                ),
                iconSize: 30,
                color: my_pink,
                onPressed: () {
                  launchMailto();
                },
              ),
              SizedBox(
                width: 2,
              ),
              IconButton(
                icon: Image.asset(ig, color: Colors.black, height: 25,),
                onPressed: _launchIG,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
