import 'package:flutter/material.dart';
import 'package:signup_screen/views/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
