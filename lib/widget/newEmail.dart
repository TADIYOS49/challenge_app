import 'package:flutter/material.dart';

class NewEmail extends StatefulWidget {
  static TextEditingController emailController = TextEditingController();
  @override
  _NewEmailState createState() => _NewEmailState();
}

class _NewEmailState extends State<NewEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: NewEmail.emailController,
          validator: (value) {
            if (value.isEmpty) {
              return 'Enter an Email Address';
            } else if (!value.contains('@')) {
              return 'Please enter a valid email address';
            }
            return null;
          },
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.white70, width: 0.0),
            ),
            border: const OutlineInputBorder(),
            fillColor: Colors.lightBlueAccent,
            labelText: 'E-mail',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
