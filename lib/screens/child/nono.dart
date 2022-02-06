import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
// Import package
import 'package:battery_info/model/android_battery_info.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/iso_battery_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';

// Access current battery health - Android

class NonoSqare extends StatefulWidget {
  const NonoSqare({Key? key}) : super(key: key);

  @override
  _NonoSqareState createState() => _NonoSqareState();
}

class _NonoSqareState extends State<NonoSqare> {
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
                "No-No Square",
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
                          padding: const EdgeInsets.fromLTRB(25, 15, 20, 0),
                          child: Text(
                            "What are private body part?",
                            style: GoogleFonts.bowlbyOne(
                              textStyle: TextStyle(
                                  color: Color(0xff000000), fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("assets/body.png"),
                        )
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
