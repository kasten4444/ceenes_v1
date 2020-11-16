import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/body_responsive.dart';
import 'Widgets/header_responsive.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CEENES',
      home: MyHomePage(),
    );
  }
}

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.getAppBar() ,
      body: BodyResponsive(),
    );
  }
}

 */

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [HeaderResponsive(), BodyResponsive()],
        ),
      ),
    );
  }
}

 */

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 50,
            ),
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
