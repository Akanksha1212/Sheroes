import 'package:bottom_nav_bar/bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:hackviolet/screens/chat.dart';
import 'package:hackviolet/screens/home.dart';
import 'package:hackviolet/screens/profile.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEE6F3),
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _body() => SizedBox.expand(
        child: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Home(),
            ChatWidget(),
            DashboardprofilechangesWidget(),
          ],
        ),
      );

  Widget _bottomNavBar() => BottomNavBar(
        backgroundColor: Color(0xffEEE6F3),
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Home',
            icon: const Icon(Icons.home_outlined),
            activeColor: Color(0xff6C6CEA),
            inactiveColor: Color(0xff6C6CEA),
            activeBackgroundColor: Color(0xffEEE6F3),
            inactiveBackgroundColor: Color(0xffEEE6F3),
          ),
          BottomNavBarItem(
            title: 'Community',
            icon: const Icon(Icons.chat_bubble_outline),
            activeColor: Color(0xff6C6CEA),
            inactiveColor: Color(0xff6C6CEA),
            activeBackgroundColor: Color(0xffEEE6F3),
            inactiveBackgroundColor: Color(0xffEEE6F3),
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.person_outline),
            activeColor: Color(0xff6C6CEA),
            inactiveColor: Color(0xff6C6CEA),
            activeBackgroundColor: Color(0xffEEE6F3),
            inactiveBackgroundColor: Color(0xffEEE6F3),
          ),
        ],
      );
}
