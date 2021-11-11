import 'dart:ui';

import 'package:flutter/material.dart';

class Goal_Create extends StatefulWidget {
  const Goal_Create({Key key}) : super(key: key);

  @override
  _Goal_CreateState createState() => _Goal_CreateState();
}

class _Goal_CreateState extends State<Goal_Create> {
  bool isCheckedtimestamp = false;
  bool isCheckedpictures = false;

  Widget checkbox(String name, bool index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )),
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all(Color.fromRGBO(2, 59, 71, 1)),
          value: index ? isCheckedtimestamp : isCheckedpictures,
          onChanged: (bool value) {
            setState(() {
              index ? isCheckedtimestamp = value : isCheckedpictures = value;
            });
          },
        )
      ],
    );
  }

  Widget space(double index) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * index,
    );
  }

  TextField textfield(String name) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70, width: 0.0),
        ),
        border: const OutlineInputBorder(),
        fillColor: Colors.lightBlueAccent,
        labelText: name,
        labelStyle: TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.save_rounded), onPressed: () {})],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Goal",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(2, 59, 71, 1),
                Color.fromRGBO(32, 125, 126, 1)
              ]),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.12,
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              space(0.06),
              textfield("Goal Name"),
              space(0.07),
              textfield("Points"),
              space(0.07),
              checkbox("Use Timestamps?", true),
              space(0.05),
              checkbox("Allow Pictures?", false),
              space(0.03),
              Divider(
                thickness: 3,
                color: Colors.white54,
              ),
              space(0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fields",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white70,
                      ),
                      onPressed: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
