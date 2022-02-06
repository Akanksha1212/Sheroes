import 'package:flutter/material.dart';
import 'package:hackviolet/screens/ageChecker.dart';
import 'package:hackviolet/screens/chat.dart';
import 'package:hackviolet/screens/adult/adult_home.dart';
import 'package:hackviolet/screens/child/childNavBar.dart';
import 'package:hackviolet/screens/child/child_home.dart';
import 'package:hackviolet/screens/child/nono.dart';
import 'package:hackviolet/screens/child/storyTime.dart';
import 'package:hackviolet/screens/level/levelHome.dart';
import 'package:hackviolet/screens/onboarding.dart';
import 'package:hackviolet/screens/rootPage.dart';
import 'package:hackviolet/screens/sosMode.dart';
import 'package:hackviolet/screens/teen/teenNavBar.dart';
import 'package:hackviolet/screens/teen/teen_home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/adulthome':
          return MaterialPageRoute(builder: (context) => AdultHome());
        case '/teenhome':
          return MaterialPageRoute(builder: (context) => TeenHome());
        case '/childhome':
          return MaterialPageRoute(builder: (context) => ChildHome());
        case '/onboarding':
          return MaterialPageRoute(builder: (context) => OnBoardingPage());
        case '/ageChecker':
          return MaterialPageRoute(builder: (context) => AgeChecker());
        case '/rootPage':
          return MaterialPageRoute(builder: (context) => RootPage());
        case '/childNavBar':
          return MaterialPageRoute(builder: (context) => ChildNavBar());
        case '/teenNavBar':
          return MaterialPageRoute(builder: (context) => TeenNavBar());
        case '/sosMode':
          return MaterialPageRoute(builder: (context) => SOSMode());
        case '/story':
          return MaterialPageRoute(builder: (context) => StoryTime());
        case '/chat':
          return MaterialPageRoute(builder: (context) => ChatWidget());
        case '/nono':
          return MaterialPageRoute(builder: (context) => NonoSqare());
        case '/levelHome':
          return MaterialPageRoute(builder: (context) => LevelHome());
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
