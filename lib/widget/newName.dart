import 'package:flutter/material.dart';

class NewNome extends StatefulWidget {
  @override
  _NewNomeState createState() => _NewNomeState();
}

class _NewNomeState extends State<NewNome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
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
        ),
      ),
    );
  }
}
