import 'package:ceenes/assets/Styles/Colors/colors.dart';
import 'package:ceenes/assets/Styles/Icons/my_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Row5 extends StatefulWidget {
  @override
  _Row5State createState() => _Row5State();
}

class _Row5State extends State<Row5> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 20, 20),
                child: Container(
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'TEST OUR LATEST FEATURES.',
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                color: my_pink,
                              ),
                            ],
                            fontSize: 45,
                            decoration: TextDecoration.none,
                            color: my_pink,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SelectableText(
                        'Unsere Web-App ist ständig im Umbruch und wir benötigen deine Hilfe, um unsere Features zu testen.'
                            ' Hinterlasse hier deine E-Mail Adresse, um zun den ertsen USern gehören zu können. Damit hilfst'
                            ' du uns beim Testen un der Entwicklung neuer Features. Wir freuen uns von dir zu hören.',
                        style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: my_blue,
                          fontFamily: 'Segoe',
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
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
                                              BorderRadius.circular(10.0),
                                        ),
                                        hintText: 'Deine Email...',
                                        hintStyle: TextStyle(
                                            color: Colors.white
                                                .withOpacity(0.75)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: my_pink),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
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
                          SizedBox(width: 30,),
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
                                    String email = myController.text;
                                    print(email);
                                    if (_formKey.currentState.validate()) {
                                      firestore
                                          .collection("emails")
                                          .add({"email": email});
                                    } else {
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
                      )
                    ],
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