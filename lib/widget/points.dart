import 'package:challeng/widget/points_board.dart';
import 'package:flutter/material.dart';

class Points extends StatefulWidget {
  const Points({Key key}) : super(key: key);

  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  Widget space() {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.07,
    );
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    print("test");
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [shadow],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                        child: Board(),
                      )),
                ),
                space(),
                InkWell(
                  onTap: () {
                    print("test");
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
                        "Manage",
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
                          boxShadow: [shadow],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        "Earn Points",
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
                          boxShadow: [shadow],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        "Points Log",
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
                          boxShadow: [shadow],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        "Bucks",
                        style: TextStyle(
                          color: Color.fromRGBO(2, 59, 71, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ))),
                ),
              ],
            ),
          ),
        ));
  }
}
