import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/text_input/text_input.dart';

class AddressField extends StatelessWidget {
  const AddressField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          FieldBackground(
            screen: screen,
            nextButtonFunc: () {},
            previousButtonFunc: () {},
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screen.width * 0.08),
              child: TextInput(
                inputLines: 3,
                lblText: 'Address',
                hintText: 'Your Address Goes here...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
