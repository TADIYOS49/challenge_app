import 'package:challeng/controllers/database.controller.dart';
import 'package:challeng/pages/home.page.dart';
import 'package:challeng/pages/newuser.page.dart';
import 'package:challeng/widget/newEmail.dart';
import 'package:challeng/widget/newName.dart';
import 'package:challeng/widget/password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ButtonNewUser extends StatefulWidget {
  @override
  _ButtonNewUserState createState() => _ButtonNewUserState();
}

class _ButtonNewUserState extends State<ButtonNewUser> {
  bool isLoading = false;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //  DatabaseReference dbRef =

  //     FirebaseDatabase.instance.reference().child("Users");

  void registerToFb() async {
    firebaseAuth
        .createUserWithEmailAndPassword(
            email: NewEmail.emailController.text,
            password: PasswordInput.passwordController.text)
        .then((res) async {
      isLoading = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
      await DatabaseService(id: res.user.uid).addusertodb(
          NewEmail.emailController.text,
          NewNome.nameController.text,
          PasswordInput.passwordController.text);
    }).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color.fromRGBO(2, 59, 71, 1),
              title: Text(
                "Error",
                style: TextStyle(color: Colors.white70),
              ),
              content:
                  Text(err.message, style: TextStyle(color: Colors.white70)),
              actions: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white54),
                  ),
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.blue[300],
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FlatButton(
          onPressed: () {
            if (NewUser.formKey.currentState.validate()) {
              setState(() {
                isLoading = true;
              });
              registerToFb();
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'OK',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
