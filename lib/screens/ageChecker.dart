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
                                  CustomButton2(
                                      name: "Children",
                                      nextPath: "/childNavBar")
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
                                  CustomButton2(
                                      name: "Teens", nextPath: "/teenhome")
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
                                  CustomButton2(
                                      name: "Adult", nextPath: "/adulthome")
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
                          CustomButton(name: "Submit", nextPath: "/rootPage")
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgeChecker()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
