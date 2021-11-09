import 'package:challeng/widget/community.dart';
import 'package:challeng/widget/main_menu.dart';
import 'package:challeng/widget/points.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedindex = 1;

  void _NavigationClick(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Points(),
    Main(),
    Communtiy()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
