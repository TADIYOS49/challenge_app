import 'package:challeng/pages/goal_create.page.dart';
import 'package:flutter/material.dart';

class Create_Challenge extends StatefulWidget {
  const Create_Challenge({Key key}) : super(key: key);

  @override
  _Create_ChallengeState createState() => _Create_ChallengeState();
}

class _Create_ChallengeState extends State<Create_Challenge> {
  DateTime selectedDate = DateTime.now();
  DateTime firstDate;
  DateTime lastDate;

  Widget smallcontainer(String first, String second) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(2, 59, 71, 1)),
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.92,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(first,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
              Text(second,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ))
            ],
          ),
        ));
  }

  Widget maincontainer(String first, String second) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white60),
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(first,
                  style: TextStyle(
                    color: Color.fromRGBO(2, 59, 71, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
              Text(second,
                  style: TextStyle(
                    color: Color.fromRGBO(2, 59, 71, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ))
            ],
          ),
        ));
  }

  Widget actionbutton(String name, int index) {
    return FlatButton.icon(
        onPressed: () {
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Goal_Create()));
          } else if (index == 2) {
            print("add team has been clicked");
          }
        },
        icon: Icon(Icons.add_circle_outline_rounded, color: Colors.white70),
        label: Text(
          name,
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        ));
  }

  Widget label(String name) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.white70, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget space(double index) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * index,
    );
  }

  _selectDate(BuildContext context, int index) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      helpText: "Pick a Date",
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color.fromRGBO(2, 59, 71, 1),
            accentColor: const Color.fromRGBO(32, 125, 126, 1),
            colorScheme:
                ColorScheme.light(primary: const Color.fromRGBO(2, 59, 71, 1)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
        if (index == 1) {
          firstDate = selected;
        } else if (index == 2) {
          lastDate = selected;
        }
      });
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Create",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              space(0.07),
              textfield("Challenge Name"),
              space(0.07),
              textfield("Challenge Subject"),
              space(0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                      textColor: Colors.white70,
                      onPressed: () {
                        _selectDate(context, 1);
                      },
                      icon: Icon(Icons.calendar_today_rounded),
                      label: Text(firstDate == null
                          ? "Start Date"
                          : "${firstDate.day}/${firstDate.month}/${firstDate.year}")),
                  FlatButton.icon(
                      textColor: Colors.white70,
                      onPressed: () {
                        _selectDate(context, 2);
                      },
                      icon: Icon(Icons.calendar_today_rounded),
                      label: Text(lastDate == null
                          ? "Finish Date"
                          : "${lastDate.day}/${lastDate.month}/${lastDate.year}")),
                ],
              ),
              space(0.04),
              //here goal label
              label("Goal"),
              space(0.02),
              //container
              maincontainer("Goal", "Points"),
              space(0.02),
              //smallcontainer
              smallcontainer("here is an example", "6"),
              space(0.02),
              //button to add
              actionbutton("Add Goal", 1),
              label("Team"),
              space(0.02),
              maincontainer("Team Name", ""),
              space(0.02),
              smallcontainer("Team 1", ""),
              space(0.02),
              actionbutton("Add Team", 2)
            ],
          ),
        ),
      ),
    );
  }
}
