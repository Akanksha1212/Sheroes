import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'dart:math' as math;

class AdultProfile extends StatefulWidget {
  @override
  _AdultProfileState createState() => _AdultProfileState();
}

class _AdultProfileState extends State<AdultProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 800,
        decoration: BoxDecoration(
          color: Color.fromRGBO(108, 108, 234, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 74,
              left: 13,
              child: Container(
                  width: 390,
                  height: 726,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color.fromRGBO(251, 251, 251, 1),
                  ))),
          Positioned(
              top: 40,
              left: 170,
              child: Text(
                'Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 117,
              left: 120,
              child: Text(
                'Current Profile',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(81, 81, 110, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 314,
              left: 161,
              child: Container(
                  width: 38,
                  height: 46.99998474121094,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 9.495572090148926,
                        child: Container(
                            width: 18.746553421020508,
                            height: 13.6509370803833,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 3.88568111448825,
                                  left: 1.8228199617419136,
                                  child: Transform.rotate(
                                    angle: 15.83298083872003 * (math.pi / 180),
                                    child: Image.asset(
                                      "assets/chick.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                  )),
                              Positioned(
                                  top: 6.156221760197809,
                                  left: -0.3273280102763465,
                                  child: Transform.rotate(
                                    angle:
                                        -3.0305833205281547 * (math.pi / 180),
                                    child: Container(
                                        width: 9.626609802246094,
                                        height: 7.485998630523682,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(239, 79, 79, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9.626609802246094,
                                                  7.485998630523682)),
                                        )),
                                  )),
                              Positioned(
                                  top: 5.892883083969593,
                                  left: 11.356314989698717,
                                  child: Transform.rotate(
                                    angle:
                                        -3.0305833936881603 * (math.pi / 180),
                                    child: Container(
                                        width: 7.09329080581665,
                                        height: 5.724586486816406,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(239, 79, 79, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  7.09329080581665,
                                                  5.724586486816406)),
                                        )),
                                  )),
                            ]))),
                    Positioned(
                        top: 9.080944061279297,
                        left: 0,
                        child: Container(
                            width: 38,
                            height: 37.91904067993164,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 229, 215, 1),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(38, 37.91904067993164)),
                            ))),
                    Positioned(
                        top: 21.21502685546875,
                        left: 9.120016098022461,
                        child: Container(
                            width: 3.5466666221618652,
                            height: 3.5391104221343994,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(80, 80, 80, 1),
                              borderRadius: BorderRadius.all(Radius.elliptical(
                                  3.5466666221618652, 3.5391104221343994)),
                            ))),
                    Positioned(
                        top: 21.21502685546875,
                        left: 25.333391189575195,
                        child: Container(
                            width: 3.5466666221618652,
                            height: 3.5391104221343994,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(80, 80, 80, 1),
                              borderRadius: BorderRadius.all(Radius.elliptical(
                                  3.5466666221618652, 3.5391104221343994)),
                            ))),
                    Positioned(
                        top: 25.78497314453125,
                        left: 5.573275089263916,
                        child: Container(
                            width: 5.573333740234375,
                            height: 2.5279359817504883,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 188, 188, 1),
                              borderRadius: BorderRadius.all(Radius.elliptical(
                                  5.573333740234375, 2.5279359817504883)),
                            ))),
                    Positioned(
                        top: 25.78497314453125,
                        left: 26.85335350036621,
                        child: Container(
                            width: 5.573333740234375,
                            height: 2.5279359817504883,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 188, 188, 1),
                              borderRadius: BorderRadius.all(Radius.elliptical(
                                  5.573333740234375, 2.5279359817504883)),
                            ))),
                  ]))),
          Positioned(
              top: 374,
              left: 140,
              child: Text(
                'Adult Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(23, 23, 48, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 403,
              left: 158,
              child: Text(
                'Change',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(108, 108, 234, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 225,
              left: 155,
              child: Text(
                'Change',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(108, 108, 234, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 201,
              left: 156,
              child: Text(
                ' Jane',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(81, 81, 110, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 175,
              left: 40,
              child: Text(
                'Your Name is',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 274,
              left: 40,
              child: Text(
                'Your Current Age is',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
