import 'package:challeng/pages/home.page.dart';
import 'package:challeng/pages/login.page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    return SplashScreen(
        loadingText: Text(
          "Super Tracker",
          style: TextStyle(color: Colors.white),
        ),
        navigateAfterSeconds: result != null ? Home() : LoginPage(),
        seconds: 5,
        title: new Text(
          'Welcome To Super Tracker!',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white70),
        ),
        //image: Image.asset('assets/images/dart.png', fit: BoxFit.scaleDown),
        backgroundColor: Color.fromRGBO(2, 59, 71, 1),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("flutter"),
        loaderColor: Colors.white54);
  }
}
