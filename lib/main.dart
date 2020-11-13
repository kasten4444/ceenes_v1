import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/header_responsive.dart';
import 'package:ceenes/Widgets/body_responsive.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ceenes/Widgets/app_bar.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.getAppBar() ,
      body: BodyResponsive(),
    );
  }
}

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
