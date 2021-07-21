import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/text_input/text_input.dart';

class NameField extends StatelessWidget {
  const NameField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FieldBackground(
              screen: screen,
              longBtnText: 'Next',
              nextButtonFunc: () {
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index + 1);
              },
              previousButtonFunc: () {
                Navigator.pop(context);
              },
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screen.width * 0.08),
                child: TextInput(
                  lblText: 'full name',
                  hintText: 'Your Name Goes here...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
