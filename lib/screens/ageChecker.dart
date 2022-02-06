import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';

class AgeChecker extends StatefulWidget {
  const AgeChecker({Key? key}) : super(key: key);

  @override
  _AgeCheckerState createState() => _AgeCheckerState();
}

class _AgeCheckerState extends State<AgeChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEE6F3),
      body: Center(
        child: Container(
          height: 670,
          width: 380,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Column(children: [
                  CustomButton(name: "Submit", nextPath: "/home")
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
