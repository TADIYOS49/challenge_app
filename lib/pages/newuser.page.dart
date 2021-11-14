import 'package:challeng/widget/buttonNewUser.dart';
import 'package:challeng/widget/newEmail.dart';
import 'package:challeng/widget/newName.dart';
import 'package:challeng/widget/password.dart';
import 'package:challeng/widget/singup.dart';
import 'package:challeng/widget/textNew.dart';
import 'package:challeng/widget/userOld.dart';
import 'package:flutter/material.dart';

class NewUser extends StatefulWidget {
  static final formKey = GlobalKey<FormState>();
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(2, 59, 71, 1),
                Color.fromRGBO(32, 125, 126, 1)
              ]),
        ),
        child: ListView(
          children: <Widget>[
              Form(
              key: NewUser.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SingUp(),
                      TextNew(),
                    ],
                  ),
                  NewNome(),
                  NewEmail(),
                  PasswordInput(),
                  ButtonNewUser(),
                  UserOld(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
