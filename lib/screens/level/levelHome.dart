import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
// Import package
import 'package:battery_info/model/android_battery_info.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/iso_battery_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';
import 'package:hackviolet/screens/child/nono.dart';

// Access current battery health - Android

class LevelHome extends StatefulWidget {
  const LevelHome({Key? key}) : super(key: key);

  @override
  _LevelHomeState createState() => _LevelHomeState();
}

class _LevelHomeState extends State<LevelHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6C6CEA),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Self Defense Game",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(0)),
                    color: Colors.white,
                  ),

                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 42,
                        width: 330,
                        color: Color(0xffC1A4FF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Play to earn cookies",
                                style: GoogleFonts.bowlbyOne(
                                  textStyle: TextStyle(
                                      color: Color(0xff6C6CEA), fontSize: 15),
                                ),
                              ),
                              Image.asset(
                                "assets/Cookie.png",
                                height: 25,
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Card(
                          child: GestureDetector(
                            child: Container(
                              height: 178,
                              width: 350,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC1A4FF)),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        "assets/level1.png",
                                        height: 150,
                                        width: 150,
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Level 1",
                                            style: GoogleFonts.bowlbyOne(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Text(
                                            "Girl Power! \nLet\'s warm up",
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 12),
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => NonoSqare()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Card(
                          child: GestureDetector(
                            child: Container(
                              height: 178,
                              width: 350,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC1A4FF)),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        "assets/level2.png",
                                        height: 150,
                                        width: 150,
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Level 2",
                                            style: GoogleFonts.bowlbyOne(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Text(
                                            "Get ready",
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 12),
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => NonoSqare()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Card(
                          child: GestureDetector(
                            child: Container(
                              height: 178,
                              width: 350,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC1A4FF)),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        "assets/level3.png",
                                        height: 150,
                                        width: 150,
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Level 3",
                                            style: GoogleFonts.bowlbyOne(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Text(
                                            "You can do this!",
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 12),
                                            ),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => NonoSqare()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
