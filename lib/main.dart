import 'package:flutter/material.dart';
import 'package:hackviolet/screens/ageChecker.dart';
import 'package:hackviolet/screens/chat.dart';
import 'package:hackviolet/screens/home.dart';
import 'package:hackviolet/screens/onboarding.dart';
import 'package:hackviolet/screens/rootPage.dart';
import 'package:hackviolet/screens/sosMode.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => Home());
        case '/onboarding':
          return MaterialPageRoute(builder: (context) => OnBoardingPage());
        case '/ageChecker':
          return MaterialPageRoute(builder: (context) => AgeChecker());
        case '/rootPage':
          return MaterialPageRoute(builder: (context) => RootPage());
        case '/sosMode':
          return MaterialPageRoute(builder: (context) => SOSMode());
        case '/chat':
          return MaterialPageRoute(builder: (context) => ChatWidget());
      }
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/onboarding'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),

        decoration: BoxDecoration(color: Color(0xffFBFFE2)),
        // child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/"),
            ),
            Image(
              image: AssetImage("assets/"),
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
