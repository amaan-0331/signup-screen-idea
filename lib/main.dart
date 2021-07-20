import 'package:flutter/material.dart';
import 'package:signup_screen/views/signup_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff367c74),
              elevation: 10,
            ),
          ),
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat'),
      home: WelcomeScreen(),
    );
  }
}
