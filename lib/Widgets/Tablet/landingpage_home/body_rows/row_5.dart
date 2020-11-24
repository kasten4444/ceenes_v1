import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Row5_Tablet extends StatefulWidget {
  @override
  _Row5_TabletState createState() => _Row5_TabletState();
}

class _Row5_TabletState extends State<Row5_Tablet> {
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
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80, bottom: 250),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //color: Colors.amber,
                //padding: const EdgeInsets.only(left: 200,right:200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectableText(
                      'TEST OUR LATEST FEATURES.',
                      style: TextStyle(
                          fontSize: 45,
                          decoration: TextDecoration.none,
                          color: my_pink,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 800,
                      ),
                      child: Container(
                          child: SelectableText(
                        'Unsere Web-App ist ständig im Umbruch und wir benötigen deine Hilfe, um unsere Features zu testen.'
                        ' Hinterlasse hier deine E-Mail Adresse, um zun den ertsen Usern gehören zu können. Damit hilfst'
                        ' du uns beim Testen un der Entwicklung neuer Features. Wir freuen uns von dir zu hören.',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'Segoe',
                        ),
                      )),
                    ),
                    SizedBox(height: 20),
                    Container(
                        width: 500,
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
                                          hintText: 'Deine Email...',
                                          hintStyle: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.75)),
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
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
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
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
