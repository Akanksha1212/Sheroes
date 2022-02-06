import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

class ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ChatWidget - FRAME
    return Scaffold(
        body: Container(
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
                  top: 45,
                  left: 155,
                  child: Text(
                    'Chat Room',
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
                  top: 453,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse32.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 168,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse34.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 115,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse33.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 458,
                  left: 78,
                  child: Container(
                      width: 224,
                      height: 34,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 224,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(196, 99, 255, 0.25),
                                        offset: Offset(0, 0),
                                        blurRadius: 3)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 504,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 296,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Zfvxidai1.png'),
                            fit: BoxFit.fitWidth),
                      ))),
              Positioned(
                  top: 115,
                  left: 82,
                  child: Text(
                    'Sarah',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(81, 81, 110, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 135,
                  left: 82,
                  child: Text(
                    'How are you today?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 48, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 168,
                  left: 82,
                  child: Text(
                    'Jean',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(81, 81, 110, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 188,
                  left: 82,
                  child: Text(
                    'Not so bad, I got 2 meetings',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 48, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 118,
                  left: 134,
                  child: Text(
                    '1:30 pm',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(180, 180, 207, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 171,
                  left: 134,
                  child: Text(
                    '1:31 pm',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(180, 180, 207, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 274,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse35.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 221,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse36.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 221,
                  left: 82,
                  child: Text(
                    'Sarah',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(81, 81, 110, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 241,
                  left: 82,
                  child: Text(
                    'That’s a lot less than last week!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 48, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 274,
                  left: 82,
                  child: Text(
                    'Jean',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(81, 81, 110, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 294,
                  left: 82,
                  child: Text(
                    'Yes, I am very glad about the changes.\nHow\’s your day so far? I know you had \na rough morning.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 48, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 224,
                  left: 134,
                  child: Text(
                    '1:44 pm',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(180, 180, 207, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 350,
                  left: 27,
                  child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse37.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(39, 39)),
                      ))),
              Positioned(
                  top: 350,
                  left: 82,
                  child: Text(
                    'Sarah',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(81, 81, 110, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 370,
                  left: 82,
                  child: Text(
                    'It\’s better now. I had lunch not so long ago. \nI had a salmon pokebowl.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 48, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 353,
                  left: 134,
                  child: Text(
                    '3:44 pm',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(180, 180, 207, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 277,
                  left: 134,
                  child: Text(
                    '1:54 pm',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(180, 180, 207, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
            ])));
  }
}
