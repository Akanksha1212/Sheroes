import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackviolet/screens/home.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Home()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: 300,
      width: 300,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

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
                child: Column(
                  children: [
                    Expanded(
                      child: IntroductionScreen(
                        key: introKey,
                        globalBackgroundColor: Colors.white,

                        pages: [
                          PageViewModel(
                            title: "",
                            body:
                                "Let children discover boundaries and understand their bodies.",
                            image: _buildImage('on1.png'),
                            decoration: pageDecoration,
                          ),
                          PageViewModel(
                            title: "",
                            body:
                                "Play our games to learn about self-defence movements for women.",
                            image: _buildImage('on2.png'),
                            decoration: pageDecoration,
                          ),
                          PageViewModel(
                            title: "",
                            body:
                                "Talks about workplace challenges with other women.",
                            image: _buildImage('on3.png'),
                            decoration: pageDecoration,
                          ),
                          PageViewModel(
                            title: "",
                            body:
                                "A female center empowerment app for the young generation.",
                            image: _buildImage('on4.png'),
                            footer: ElevatedButton(
                              onPressed: () {
                                introKey.currentState?.animateScroll(0);
                              },
                              child: const Text(
                                'Start',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            decoration: pageDecoration,
                          ),
                        ],
                        onDone: () => _onIntroEnd(context),
                        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
                        showSkipButton: false,
                        skipFlex: 0,
                        nextFlex: 0,
                        //rtl: true, // Display as right-to-left
                        // skip: const Text('Skip'),
                        next: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFB4B4CF),
                        ),
                        done: const Text('',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        curve: Curves.fastLinearToSlowEaseIn,
                        controlsMargin: const EdgeInsets.all(16),
                        controlsPadding: kIsWeb
                            ? const EdgeInsets.all(12.0)
                            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                        dotsDecorator: const DotsDecorator(
                          size: Size(13.0, 13.0),
                          color: Color(0xFFB4B4CF),
                          activeSize: Size(60.0, 13.0),
                          activeColor: Color(0xFFB4B4CF),
                          activeShape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          ),
                        ),
                        dotsContainerDecorator: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                      ),
                    ),
                    Text('skip')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
