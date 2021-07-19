import 'package:flutter/material.dart';
import 'package:signup_screen/components/button/previous_button.dart';
import 'package:signup_screen/components/button/next_button.dart';
import 'package:signup_screen/components/space_box/space_box.dart';

class FieldBackground extends StatelessWidget {
  const FieldBackground(
      {Key key,
      @required this.screen,
      this.nextButtonFunc,
      this.previousButtonFunc})
      : super(key: key);
  final Function previousButtonFunc;
  final Function nextButtonFunc;

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: screen.height * 0.06,
          bottom: screen.height * 0.04,
          left: screen.width * 0.05,
          right: screen.width * 0.05),
      child: Container(
        height: screen.height * 0.9,
        width: screen.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Color(0xffc1c1c1)),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    PreviousButton(
                      btnfunc: previousButtonFunc,
                    ),
                    NextButton(
                      btntext: 'Next',
                      btnfunc: nextButtonFunc,
                    ),
                  ],
                ),
                SpaceBox(
                  boxHeight: 25,
                )
              ],
            )),
      ),
    );
  }
}
