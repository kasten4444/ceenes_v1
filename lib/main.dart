import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/body_responsive.dart';
import 'Widgets/header_responsive.dart';

import 'package:cloud_firestore/cloud_firestore.dart';


void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceenes',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            BodyResponsive()
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: HeaderResponsive(),
        )
      ],
    );
  }
}
