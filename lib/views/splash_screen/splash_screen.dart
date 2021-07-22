import 'package:flutter/material.dart';
import 'package:signup_screen/components/space_box/space_box.dart';
import 'package:signup_screen/views/signup_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToNext();
    super.initState();
  }

  void navigateToNext() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screen.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'splashLogo',
                child: Image.asset(
                  'assets/images/logo-no-bg.png',
                  width: screen.width * 0.4,
                ),
              ),
              SpaceBox(
                boxHeight: 50,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff367c74)),
                backgroundColor: Colors.white,
                strokeWidth: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
