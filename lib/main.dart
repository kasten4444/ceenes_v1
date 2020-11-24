import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/body_responsive.dart';
import 'Widgets/header_responsive.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      print('error');
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return Container(
        child: CircularProgressIndicator(),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceenes',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollbar.rrect(
          controller: _controller,
          child: ListView(
            controller: _controller,
            children: [BodyResponsive()],
          ),
          scrollbarAnimationDuration: Duration(seconds: 1),
          alwaysVisibleScrollThumb: false,
          heightScrollThumb: 150,
          backgroundColor: my_pink.withOpacity(0.8),
          padding: EdgeInsets.only(right: 8),
          scrollbarTimeToFade: Duration(seconds: 2) ,


        ),
        Align(
          alignment: Alignment.topCenter,
          child: HeaderResponsive(),
        ),
      ],
    );
  }
}
