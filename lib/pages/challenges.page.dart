import 'package:flutter/material.dart';

class Challenge extends StatefulWidget {
  const Challenge({Key key}) : super(key: key);

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  Widget space() {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.07,
    );
  }

  //for the drop down menu of  my challenges
  bool _dropdown = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Challenges",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
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
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
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
                        "Create",
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
                        "Join",
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
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white54),
                      height: _dropdown
                          ? MediaQuery.of(context).size.height * 0.5
                          : MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                "My Challenges",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(2, 59, 71, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    _dropdown
                                        ? Icons.keyboard_arrow_down_rounded
                                        : Icons.keyboard_arrow_left_rounded,
                                    color: Color.fromRGBO(2, 59, 71, 1),
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _dropdown = !_dropdown;
                                    });
                                  })
                            ],
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: _dropdown
                      ? MediaQuery.of(context).size.height * 0.0
                      : MediaQuery.of(context).size.height * 0.4,
                )
              ],
            ),
          ))),
    );
  }
}
