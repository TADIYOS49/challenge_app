import 'package:challeng/pages/challenges.page.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({Key key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  void _Navigation(int index) {
    if (index == 1) {
      print("personal");
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Challenge()));
    } else {
      print("Log Media");
    }
  }

  BoxShadow shadow = BoxShadow(
    color: Colors.white38,
    blurRadius: 10.0, // has the effect of softening the shadow
    spreadRadius: 1.0, // has the effect of extending the shadow
    offset: Offset(
      0.0, // horizontal, move right 10
      0.0, // vertical, move down 10
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(2, 59, 71, 1),
                Color.fromRGBO(32, 125, 126, 1)
              ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _Navigation(1);
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [shadow],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                        child: Text(
                      "Personal",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 59, 71, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
              ),
              InkWell(
                onTap: () {
                  _Navigation(2);
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [shadow],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                        child: Text(
                      "Challenges",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 59, 71, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
              ),
              InkWell(
                onTap: () {
                  _Navigation(3);
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [shadow],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                        child: Text(
                      "Log Media",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 59, 71, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
              ),
            ],
          ),
        ));
  }
}
