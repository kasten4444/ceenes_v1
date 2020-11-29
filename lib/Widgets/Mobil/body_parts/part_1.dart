import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Part1 extends StatefulWidget {
  @override
  _Part1State createState() => _Part1State();
}

class _Part1State extends State<Part1> {
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
    return Center(
        child: Container(
      //color: Colors.green,
      height: MediaQuery.of(context).size.height,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TypewriterAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: ["CEENES"],
              textStyle: TextStyle(
                  fontSize: 70,
                  decoration: TextDecoration.none,
                  color: my_pink,
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8),
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart,
              speed: Duration(milliseconds: 700),
              isRepeatingAnimation: true,
              repeatForever: true,
              displayFullTextOnTap: true,

              // or Alignment.topLeft
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:80, bottom: 80),
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.only(left: 40),
                    child: SelectableText(
                      'Wir haben es uns zur Aufgabe gemacht, dass du mit deinen Freunden in 2 Minuten den perfekte Film/Serie findest. Begib dich als Erste/er auf unser Abenteuer!',
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.normal,
                      ),
                    ))),
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 40),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 250, maxWidth: 250),
                      child: Container(
                        //color: Colors.grey,
                        child: Image.asset(
                          frau_im_sessel,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Container(
              //width: 400,
              child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Form(
                  key: _formKey,
                  autovalidate: _autovalidate,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            errorMaxLines: 4,
                            errorStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: my_pink,
                            //labelText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: my_pink,
                              ),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            hintText: 'Deine Email...',
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.75)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: my_pink),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            )),

                        //obscureText: true,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        validator: (input) {
                          if (input.isEmpty | !EmailValidator.validate(input)) {
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
              SizedBox(
                width: 1,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 59,
                    child: RaisedButton(
                      color: my_blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        //side: BorderSide(color: Colors.red),
                      ),
                      onPressed: () async {
                        String email = myController.text;
                        print(email);
                        if (_formKey.currentState.validate()) {
                          firestore.collection("emails").add({"email": email});
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
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        )
      ]),
    ));
  }
}
