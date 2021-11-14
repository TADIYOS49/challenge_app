import 'package:challeng/pages/login.page.dart';
import 'package:challeng/widget/community.dart';
import 'package:challeng/widget/main_menu.dart';
import 'package:challeng/widget/points.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  int _selectedindex = 1;

  void _NavigationClick(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[Points(), Main(), Communtiy()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor: Color.fromRGBO(2, 59, 71, 0.5),
              elevation: 0,
              hint: SizedBox(),
              icon: const Icon(Icons.more_vert_rounded),
              iconDisabledColor: Colors.white,
              iconEnabledColor: Colors.white,
              iconSize: 24,
              onChanged: (String newValue) {
                // if (newValue == "Settings") {
                //   // Navigator.of(context).push(
                //   //     MaterialPageRoute(builder: (context) => Settings()));
                // } else if (newValue == "About") {
                //   // Navigator.of(context)
                //   //     .push(MaterialPageRoute(builder: (context) => About()));
                // }
              },
              items: <String>['About', 'Sign-Out']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: InkWell(
                    onTap: () async {
                      if (value == 'About') {
                        print("about page has been clicked");
                      }
                      if (value == 'Sign-Out') {
                        await firebaseAuth.signOut();
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => LoginPage(),
                          ),
                          (route) =>
                              false, //if you want to disable back feature set to false
                        );
                      }
                    },
                    child: Text(
                      value,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Super Tracker",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            //fontWeight: FontWeight.w900,
            fontSize: 24,
            color: Colors.white70,
          ),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: _pages.elementAt(_selectedindex),
      // Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topRight,
      //           end: Alignment.bottomLeft,
      //           colors: [
      //             Color.fromRGBO(2, 59, 71, 1),
      //             Color.fromRGBO(32, 125, 126, 1)
      //           ]),
      //     ),
      //     child: Center(
      //       child: Text("hello"),
      //     )
      //     ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: _selectedindex,
          unselectedItemColor: Colors.white38,
          selectedItemColor: Colors.white70,
          onTap: _NavigationClick,
          items: [
            BottomNavigationBarItem(
                label: "Points", icon: Icon(Icons.monetization_on_outlined)),
            BottomNavigationBarItem(label: "Main", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Community", icon: Icon(Icons.supervisor_account_sharp)),
          ]),
    );
  }
}
