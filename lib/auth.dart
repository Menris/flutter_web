import 'package:flutter/material.dart';
import 'package:flutter_smartremont/web.dart';

class AuthorizationPage extends StatefulWidget {
  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {

  String login;
  String password;

  void validateAndSave() {
      Navigator.push(
        context,
        MaterialPageRoute(builder:
        (context) => WebPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100.0),
        child: Form(
          child: Column(
            children: <Widget>[
              new TextFormField(
                decoration: InputDecoration(labelText: "Email")
              ),
              new TextFormField(
                decoration: InputDecoration(labelText: "Пароль"),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: new RaisedButton(
                  onPressed: validateAndSave,
                  child: new Text("Войти", style: new TextStyle(fontSize: 20.0)),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}