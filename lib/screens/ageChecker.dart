import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/componenets.dart';
import 'package:hackviolet/screens/adult/adultNavBar.dart';
import 'package:hackviolet/screens/child/childNavBar.dart';
import 'package:hackviolet/screens/teen/teenNavBar.dart';

class AgeChecker extends StatefulWidget {
  const AgeChecker({Key? key}) : super(key: key);

  @override
  _AgeCheckerState createState() => _AgeCheckerState();
}

class _AgeCheckerState extends State<AgeChecker> {
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEEE6F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Tell us a little bit about yourself",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Color(0xff6C6CEA), fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 650,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            "What would you like us to call you?",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff51516E), fontSize: 15),
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
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: "Type in your text",
                                  fillColor: Colors.white70),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "How old are you?",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xff51516E), fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/eggchild.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
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
                                            'Children',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            age = 5;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/chick.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
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
                                            'Teen',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            age = 15;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/hen.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
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
                                            'Adult',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            age = 20;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "We adjust our app contents and recommendations based on the entered information.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xffB4B4CF), fontSize: 10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Children should get help from a parent or guardian.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xffFF9052), fontSize: 11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Color(0xff6C6CEA),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: GoogleFonts.bowlbyOne(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  if (age == 5) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChildNavBar()),
                                    );
                                    setState(() {
                                      age = 0;
                                    });
                                  }
                                  if (age == 15) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TeenNavBar()),
                                    );
                                    setState(() {
                                      age = 0;
                                    });
                                  }
                                  if (age == 20) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AdultNavBar()),
                                    );
                                    setState(() {
                                      age = 0;
                                    });
                                  }
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
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text(
                "Back",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Color(0xffC1A4FF), fontSize: 15),
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
