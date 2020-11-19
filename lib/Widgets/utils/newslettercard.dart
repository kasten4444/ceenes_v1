import 'package:flutter/material.dart';

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
                style: Theme
                    .of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                "Be one of the first to be notified when\nListwell is released",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline6,
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
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
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
                  valueColor: AlwaysStoppedAnimation(Theme
                      .of(context)
                      .primaryColor),
                )
              else
                ...[
                  if (sentResponse == null)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      child: ButtonTheme(
                        minWidth: double.infinity,
                        child: RaisedButton(
                          child: Text('Subscribe'),
                          onPressed: () {},
                        ),
                      ),
                    )
                  else
                    Text(
                      sentResponse,
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline6,
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
}
