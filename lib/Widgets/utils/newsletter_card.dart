import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class NewsletterCard extends StatefulWidget {
  @override
  _NewsletterCardState createState() => _NewsletterCardState();
}
class _NewsletterCardState extends State<NewsletterCard> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String sentResponse;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 12),
              Text(
                "Join Our Newsletter",
                style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                "Be one of the first to be notified when\nListwell is released",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 42),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  style: Theme.of(context).textTheme.headline5,
                  onSaved: (email) => this.email = email,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return 'Enter a correct email address';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 12),
              if (isLoading)
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
                )
              else ...[
                if (sentResponse == null)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        onPressed: submit,
                        child: Text('submit'),
                      ),
                    ),
                  )
                else
                  Text(
                    sentResponse,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
              ],
              //StyleHelper.largeHeightSpacing(),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> submit() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        setState(() {
          isLoading = true;
        });
        final response = await http.post(
          "OUR_CLOUD_FUNCTION_API",
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Access-Control-Allow-Origin': '*',
          },
          body: jsonEncode({"email": email}),
        );
        if (response.statusCode == 200) {
          setState(() {
            sentResponse = "Check your email for confirmation!";
            isLoading = false;
          });
        } else {
          setState(() {
            sentResponse = response.body;
            isLoading = false;
          });
        }
      } catch (e) {
        setState(() {
          sentResponse = "Something went wrong, please try again";
          isLoading = false;
        });
      }
    }
  }
}