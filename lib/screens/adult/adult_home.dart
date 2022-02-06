import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
// Import package
import 'package:battery_info/model/android_battery_info.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/iso_battery_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';

// Access current battery health - Android

class AdultHome extends StatefulWidget {
  const AdultHome({Key? key}) : super(key: key);

  @override
  _AdultHomeState createState() => _AdultHomeState();
}

class _AdultHomeState extends State<AdultHome> {
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
                      Padding(
                        padding: const EdgeInsets.all(25.0),
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
                                      "assets/hen.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Adult Profile",
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Text(
                          "Play our Woman\’s Self Defense moblie game to learn moves and points!",
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
                            "assets/fight.png",
                            height: 150,
                            width: 150,
                          ),
                          CustomButton2(
                            name: "Play",
                            nextPath: "/home",
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
                                        color: Color(0xff6C6CEA), fontSize: 24),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Emergency Contact",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Color(0xff171730), fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomButton2(
                                  name: "Activate",
                                  nextPath: "/sosMode",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
                        child: Text(
                          "Talk to other women about workplace challeges in our community board.",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xff171730), fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 195,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.5),
                                        topRight: Radius.circular(24.5),
                                        bottomLeft: Radius.circular(24.5),
                                        bottomRight: Radius.circular(24.5),
                                      ),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        width: 1,
                                      ),
                                    ))),
                            Positioned(
                                top: 18,
                                left: 56,
                                child: Text(
                                  'Sign up with Google',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 12,
                                left: 20,
                                child: Container(
                                    width: 26,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/google.png'),
                                          fit: BoxFit.fitWidth),
                                    ))),
                          ]))
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

// ElevatedButton(
//           child: Text('j'),
//           onPressed: () async {
//             print(
//                 "Battery Health: ${(await BatteryInfoPlugin().androidBatteryInfo)!.batteryLevel}");
//           },
//         ),
