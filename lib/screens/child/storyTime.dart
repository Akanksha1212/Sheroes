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

class StoryTime extends StatefulWidget {
  const StoryTime({Key? key}) : super(key: key);

  @override
  _StoryTimeState createState() => _StoryTimeState();
}

class _StoryTimeState extends State<StoryTime> {
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
                height: 40,
              ),
              Text(
                "Story Time",
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
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                          child: Text(
                            "Let\’s learn about boundaries and understand our bodies.",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff171730), fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
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
                                          "assets/kid.png",
                                          height: 150,
                                          width: 150,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "No-No Square",
                                              style: GoogleFonts.bowlbyOne(
                                                textStyle: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 18),
                                              ),
                                            ),
                                            Text(
                                              "Do you know your body?",
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
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: Card(
                            child: Container(
                              height: 408,
                              width: 350,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC1A4FF)),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "Personal Bubble",
                                          style: GoogleFonts.bowlbyOne(
                                            textStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 27),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            24, 10, 24, 10),
                                        child: Text(
                                          "Learn about what is a personal bubble and play games!",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 15),
                                          ),
                                          maxLines: 3,
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/family.png",
                                        // height: 230,
                                        // width: 230,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
