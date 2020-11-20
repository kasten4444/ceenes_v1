import 'package:ceenes/Widgets/utils/newslettercard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:email_validator/email_validator.dart';

class Row1_1 extends StatefulWidget {
  @override
  _Row1_1State createState() => _Row1_1State();
}

class _Row1_1State extends State<Row1_1> {
  final myController = TextEditingController();
  final _height = 40;
  bool _autovalidate = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 80, 80),
              child: Container(
                //alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'Sei einer der Ersten',
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: my_pink,
                            ),
                          ],
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SelectableText(
                      'Lass uns deine E-Mail da um zu der begrenzten Menge an Tester zu gehören. Wir informieren dich sobald du mit Swipen starten kannst',
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.none,
                        color: my_blue,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Material(
                color: my_dark_grey,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Form(
                          key: _formKey,
                          autovalidate: _autovalidate,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      errorMaxLines: 4,
                                      errorStyle:
                                          TextStyle(color: Colors.white),
                                      filled: true,
                                      fillColor: my_pink,
                                      //labelText: 'Email',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: my_pink,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      hintText: 'Deine Email...',
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.5)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: my_pink),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      )),

                                  //obscureText: true,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 20),
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return 'Bitte gebe eine gültige Email Adresse an';
                                    }
                                    return null;
                                  },
                                  controller: myController,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.maxFinite,
                            height: 50,
                            child: RaisedButton(
                              color: my_blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  String email = myController.text;
                                  print(email);

                                  final bool isValid =
                                      EmailValidator.validate(email);

                                  firestore
                                      .collection("emails")
                                      .add({"email": email});
                                } else{
                                  setState(() {
                                    _autovalidate = true;
                                  });
                                }
                              },
                              child: Container(
                                child: Text(
                                  'Benachritige mich!',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
