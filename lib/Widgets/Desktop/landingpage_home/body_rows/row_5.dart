import 'package:ceenes/Widgets/utils/newslettercard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ceenes/assets/Styles/Colors/colors.dart';


class Row5 extends StatefulWidget {
  @override
  _Row5State createState() => _Row5State();
}


class _Row5State extends State<Row5> {
  final myController = TextEditingController();
  final db = Firestore.instance;



  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Container(
                //alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'STAY IN TOUCH',
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
                      'Teste unsere neuen Features als erster aus und werden informiert, wenn'
                      'es was neues gibt.',
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
            child: Material(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(),
                  ),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () async {

                        String email = myController.text;
                        print('pressed');
                        print(db.collection("emails").document("3EvM9pz3mB3vy8aiG3YC").get());
                        /*
                        db.collection("emails").add({
                          "email" : "testTest@gmail.com"
                        });

                         */
                      },
                      child: Container(
                        child: Text('Press'),
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
