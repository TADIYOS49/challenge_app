import 'package:flutter/material.dart';

class Communtiy extends StatelessWidget {
  const Communtiy({Key key}) : super(key: key);

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
                print("test");
              },
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
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
            InkWell(
              onTap: () {
                print("test");
              },
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
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
          ],
        )));
  }
}
