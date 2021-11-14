import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
   static TextEditingController passwordController = TextEditingController();


  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: PasswordInput.passwordController,
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.white70, width: 0.0),
            ),
            border: const OutlineInputBorder(),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Enter Password';
            } else if (value.length < 6) {
              return 'Password must be atleast 6 characters!';
            }
            return null;
          },
        ),
      ),
    );
  }
}
