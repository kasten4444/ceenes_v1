import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //color: Colors.green,
                  child: Column(
                    children: [
                      SelectableText(
                        'Findet euren Film in 40 Sekunden!',
                        style: TextStyle(
                            fontSize: 50,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                          fontFamily: 'Segoe',
                        ),
                      ),
                      SelectableText(
                        'Durch unseren Swipe Algorthums findest du in Sekunden schnelle mit deinen Freunden '
                            'den für euch passenden Film und erstellt dabei noch eine gemeinsame Watchlist. Wie cool ist das denn?',
                        style: TextStyle(
                            fontSize: 25,
                            decoration: TextDecoration.none,
                            color: Colors.black,
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
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Starte jetzt!",
                                style: TextStyle(fontSize: 50, color: Colors.white),
                              ),
                            ),
                            onPressed: () {},
                            color: Colors.pink[300],
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10))),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Probier die Demo!",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                            onPressed: () {},
                            color: Colors.blue[300],
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10))),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
