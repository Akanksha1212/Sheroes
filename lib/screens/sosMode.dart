import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/material.dart';
// Import package
import 'package:battery_info/model/android_battery_info.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/iso_battery_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';

// Access current battery health - Android

class SOSMode extends StatefulWidget {
  const SOSMode({Key? key}) : super(key: key);

  @override
  _SOSModeState createState() => _SOSModeState();
}

class _SOSModeState extends State<SOSMode> {
  bool value = false;
  int val = -1;
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
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "S.O.S Mode",
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                  ),
                ),
              ],
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

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.add,
                                            size: 24, color: Color(0xff6C6CEA)),
                                        Text(
                                          "Add contact ",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Color(0xff6C6CEA),
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Text(
                                  "Emergency Contact Name ",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Color(0xff171730), fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 55,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      filled: true,
                                      hintStyle:
                                          TextStyle(color: Colors.grey[800]),
                                      hintText: "Name",
                                      fillColor: Colors.white70),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Text(
                                  "Primary Phone Number",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Color(0xff171730), fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 55,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      filled: true,
                                      hintStyle:
                                          TextStyle(color: Colors.grey[800]),
                                      hintText: "Phone Number",
                                      fillColor: Colors.white70),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Row(
                            children: [
                              Icon(Icons.add,
                                  size: 24, color: Color(0xff6C6CEA)),
                              Text(
                                "Add phone number ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xff6C6CEA), fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                "Location Sharing",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xff171730), fontSize: 15),
                                ),
                              ),
                            ),
                            Radio(
                              value: 1,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = 0;
                                });
                              },
                              activeColor: Color(0xffC1A4FF),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Card(
                            child: Container(
                              height: 120,
                              width: 400,
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
                                      Radio(
                                        value: 1,
                                        groupValue: val,
                                        onChanged: (value) {
                                          setState(() {
                                            val = 0;
                                          });
                                        },
                                        activeColor: Color(0xffC1A4FF),
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Send your last location to this contact\n whenever your battery is below 5%",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Color(0xff51516F),
                                                fontSize: 12),
                                          ),
                                          maxLines: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Card(
                            child: Container(
                              height: 170,
                              width: 420,
                              color: Color(0xff51516F),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Background Mode",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "While this mode is on, shouting your “safe word” five times will share your last location to your emergency contact.",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        height: 45,
                                        width: 150,
                                        color: Color(0xffB4B4CF),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "Edit Safe Word",
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20.0))),
                                              backgroundColor:
                                                  Color(0xff51516F),
                                              content: Container(
                                                height: 250,
                                                width: 300,
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      "Edit Safe Word",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        textStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      height: 55,
                                                      child: TextField(
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.0),
                                                                ),
                                                                filled: true,
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                            .grey[
                                                                        800]),
                                                                hintText:
                                                                    "Safe word",
                                                                fillColor: Colors
                                                                    .white70),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              1.2,
                                                      height: 60,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: RaisedButton(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffC1A4FF),
                                                          child: Text(
                                                            'Save',
                                                            style: GoogleFonts
                                                                .montserrat(
                                                              textStyle:
                                                                  TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          onPressed: () {
                                                            var snackBar = SnackBar(
                                                                content: Text(
                                                                    'Saved "Help Help Help" as your safe word'));
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                                    snackBar);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                        // CustomButton2(
                                        //   name: "Edit Safe Word",
                                        //   nextPath: "/home",
                                        // ),
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xffC1A4FF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  'Activate',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                var snackBar = SnackBar(
                                    content: Text('Activated S.O.S mode'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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

