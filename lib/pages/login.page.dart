import 'package:challeng/widget/button.dart';
import 'package:challeng/widget/first.dart';
import 'package:challeng/widget/inputEmail.dart';
import 'package:challeng/widget/password.dart';
import 'package:challeng/widget/textLogin.dart';
import 'package:challeng/widget/verticalText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromRGBO(2, 59, 71, 1),
                  Color.fromRGBO(32, 125, 126, 1)]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      VerticalText(),
                      TextLogin(),
                    ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                SizedBox(
                  height: 10,
                ),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
