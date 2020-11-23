import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:ceenes/Widgets/Tablet/tablet_styles/styles.dart';

import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Row1_Tablet extends StatefulWidget {
  @override
  _Row1_TabletState createState() => _Row1_TabletState();
}

class _Row1_TabletState extends State<Row1_Tablet> {
  final myController = TextEditingController();

  //final _height = 40;
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
    return
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 80,),
                Expanded(
                  flex: 1,
                  child: SelectableText(
                    'CEENES.',
                    style: TextStyle(
                        fontSize: 100,
                        decoration: TextDecoration.none,
                        color: my_pink,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height:20),
                Expanded(
                  flex: 1,
                  child: SelectableText(
                    'Wir haben es uns zur Aufgabe gemacht, es zu schaffen, dass du mit '
                    'deinen Freundinnen und Freunden innerhalb von 2 Minuten den perfekten Films findest.\n'
                    'Lass uns deine Email da und sei einer der Ersten!'
                    '',
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Segoe',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Form(
                        key: _formKey,
                        autovalidate: _autovalidate,
                        child: Column(
                          children: [
                            TextFormField(
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
                                        BorderRadius.circular(2.0),
                                  ),
                                  hintText: 'Deine E-Mail...',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                          .withOpacity(0.80)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: my_pink),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2))),
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  )),

                              //obscureText: true,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                              validator: (input) {
                                if (input.isEmpty |
                                    !EmailValidator.validate(input)) {
                                  return 'Bitte gebe eine gültige Email Adresse an';
                                }
                                return null;
                              },
                              controller: myController,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left:8),
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 59.5,
                          child: FlatButton(
                            color: my_blue,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(2.0),
                              //side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () async {
                              String email = myController.text;
                              print(email);
                              if (_formKey.currentState.validate()) {
                                firestore
                                    .collection("emails")
                                    .add({"email": email});
                                Toast.show(
                                  "Du wurdest erfolgreich hinzugefügt",
                                  context,
                                  duration: 2,
                                  gravity: Toast.TOP,
                                  backgroundColor: my_pink,
                                  textColor: Colors.white,
                                );
                              } else {
                                setState(() {
                                  _autovalidate = true;
                                });
                              }
                            },
                            child: Center(
                              child: Icon(Icons.email_outlined, color: Colors.white, size: 30,),
                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints(maxHeight: 1500, maxWidth: 1500),
                      child: Container(
                        //color: Colors.grey,
                        child: Image.asset(
                          zwei_auf_dem_sofa,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );

  }
}
