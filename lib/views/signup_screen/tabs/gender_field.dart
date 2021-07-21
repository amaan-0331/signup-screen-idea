import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/radio_selection/radio_selection.dart';
import 'package:signup_screen/components/space_box/space_box.dart';
import 'package:signup_screen/utils/constants.dart';

class GenderField extends StatefulWidget {
  GenderField({Key key}) : super(key: key);

  @override
  _GenderFieldState createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  gender _character;

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
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index - 1);
              },
            ),
            Container(
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screen.width * 0.08),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Gender',
                          // textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Color(0xff367C74),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RadioSelectionOption(
                        selectiontext: 'Male',
                        groupField: _character,
                        radioValue: gender.male,
                        radioFunc: (gender value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      SpaceBox(
                        boxWidth: screen.width * 0.05,
                      ),
                      RadioSelectionOption(
                        selectiontext: 'Female',
                        radioValue: gender.female,
                        groupField: _character,
                        radioFunc: (gender value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      SpaceBox(
                        boxWidth: screen.width * 0.1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
