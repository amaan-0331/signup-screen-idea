import 'package:flutter/material.dart';
import 'package:signup_screen/components/button/next_button.dart';
import 'package:signup_screen/components/space_box/space_box.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpaceBox(
                boxHeight: screen.height * 0.1,
              ),
              Image.asset(
                'assets/images/logo-no-bg.png',
                width: screen.width * 0.65,
              ),
              SpaceBox(
                boxHeight: screen.height * 0.35,
              ),
              Text(
                "It’s a great day to be a genius!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff367c74)),
              ),
              SpaceBox(
                boxHeight: screen.height * 0.08,
              ),
              Text(
                "Let's SignUp!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color(0xff367c74)),
              ),
              SpaceBox(
                boxHeight: screen.height * 0.03,
              ),
              NextButton(btnfunc: () {}, btntext: 'Next')
            ],
          ),
        ),
      ),
    );
  }
}
