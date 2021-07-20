import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/text_input/birthday_input.dart';

class BirthdayField extends StatefulWidget {
  BirthdayField({Key key}) : super(key: key);

  @override
  _BirthdayFieldState createState() => _BirthdayFieldState();
}

class _BirthdayFieldState extends State<BirthdayField> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FieldBackground(
              screen: screen,
              nextButtonFunc: () {
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index + 1);
              },
              previousButtonFunc: () {
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index - 1);
              },
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screen.width * 0.08),
                child: BirthdayInput(
                  lblText: 'birthday',
                  hintText: 'Your Birthday Goes here...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
