import 'dart:io';

import 'package:ceenes/Widgets/Desktop/privacy_policy_route/privacy_policy_route.dart';
import 'package:ceenes/Widgets/Tablet/privacy_policy_route_tablet/privacy_policy_route_tablet.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;

import 'Widgets/body_responsive.dart';
import 'Widgets/header_responsive.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      return Material(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(my_blue),
                    ),
                  ),
                  Text(
                    'Ups... es gab einen Fehler beim Aufbau der Verbindung zu unserer Datenbank. Entschuldige!\n'
                        'Um zu ceenes.com zu gelangen, aktualisiere diese Seite über deinen Browser oder klicke hier:',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh, color: my_pink, size: 25,),
                    onPressed: () {
                      html.window.location.reload();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceenes',
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/v1': (context) => null,
        '/v2': (context) => null,
        '/privacy_policy': (context) => PrivacyPolicy_Route(),
        '/privacy_policy_tablet': (context) => PrivacyPolicy_Route_Tablet()
      },
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
    return Material(
      child: Stack(
        children: [
          BodyResponsive(),
          Align(
            alignment: Alignment.topCenter,
            child: HeaderResponsive(),
          ),
        ],
      ),
    );
  }
}
