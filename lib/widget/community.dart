import 'package:challeng/pages/challenges.page.dart';
import 'package:flutter/material.dart';

class Communtiy extends StatefulWidget {
  const Communtiy({Key key}) : super(key: key);

  @override
  _CommuntiyState createState() => _CommuntiyState();
}

class _CommuntiyState extends State<Communtiy> {
  Widget space() {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.07,
    );
  }

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
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Challenge()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white38,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
                            offset: Offset(
                              0.0, // horizontal, move right 10
                              0.0, // vertical, move down 10
                            ),
                          ),
                        ],
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
              space(),
              InkWell(
                onTap: () {
                  print("test");
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white38,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
                            offset: Offset(
                              0.0, // horizontal, move right 10
                              0.0, // vertical, move down 10
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                        child: Text(
                      "Friends",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 59, 71, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
              ),
              space(),
              InkWell(
                onTap: () {
                  print("test");
                },
                child: Container(
                    decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.white38,
                        //     blurRadius:
                        //         10.0, // has the effect of softening the shadow
                        //     spreadRadius:
                        //         1.0, // has the effect of extending the shadow
                        //     offset: Offset(
                        //       0.0, // horizontal, move right 10
                        //       0.0, // vertical, move down 10
                        //     ),
                        //   ),
                        // ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white54),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                        child: Text(
                      "Create or join a Challenge",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(2, 59, 71, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
              ),
            ],
          ),
        )));
  }
}
