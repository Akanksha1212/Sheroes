import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
// Import package
import 'package:battery_info/model/android_battery_info.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/iso_battery_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';

// Access current battery health - Android

class ChildHome extends StatefulWidget {
  const ChildHome({Key? key}) : super(key: key);

  @override
  _ChildHomeState createState() => _ChildHomeState();
}

class _ChildHomeState extends State<ChildHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6C6CEA),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
            child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "Home",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
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

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                          child: Card(
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Welcome Jane",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Color(0xff171730), fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "assets/eggchild.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Child Profile",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Color(0xff171730),
                                              fontSize: 13),
                                        ),
                                      ),
                                      Icon(
                                        Icons.edit,
                                        color: Color(0xff6C6CEA),
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Story Time",
                          style: GoogleFonts.bowlbyOne(
                            textStyle: TextStyle(
                                color: Color(0xff6C6CEA), fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            "Let\’s learn about boundaries and understand our bodies.",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff171730), fontSize: 12),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/story.png",
                              height: 200,
                              width: 200,
                            ),
                            CustomButton2(
                              name: "Play",
                              nextPath: "/story",
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Card(
                            child: Container(
                              height: 170,
                              width: 400,
                              color: Color(0xffEEE6F3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "SOS",
                                    style: GoogleFonts.bowlbyOne(
                                      textStyle: TextStyle(
                                          color: Color(0xff6C6CEA),
                                          fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Emergency Contact",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Color(0xff171730),
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomButton2(
                                    name: "Activate",
                                    nextPath: "/childHome",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
                          child: Text(
                            "To use this feature, children should get help from a parent or guardian.",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xffFF9052), fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// ElevatedButton(
//           child: Text('j'),
//           onPressed: () async {
//             print(
//                 "Battery Health: ${(await BatteryInfoPlugin().androidBatteryInfo)!.batteryLevel}");
//           },
//         ),
