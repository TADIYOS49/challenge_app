import 'package:flutter/material.dart';

class InputEmail extends StatefulWidget {
  static TextEditingController emailController=TextEditingController();


  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: InputEmail.emailController,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.white70, width: 0.0),
            ),
            border: const OutlineInputBorder(),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Enter Email Address';
            } else if (!value.contains('@')) {
              return 'Please enter a valid email address!';
            }
            return null;
          },
        ),
      ),
    );
  }
}
