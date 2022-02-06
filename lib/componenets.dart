import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final String nextPath;
  CustomButton({Key? key, required this.name, required this.nextPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, nextPath);
        },
        child: Container(
            width: 266,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff6C6CEA),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              name,
              style: GoogleFonts.bowlbyOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )));
    // Bowlby One
  }
}
