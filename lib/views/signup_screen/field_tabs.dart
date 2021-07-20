import 'package:flutter/material.dart';
import 'package:signup_screen/components/space_box/space_box.dart';
import 'package:signup_screen/views/signup_screen/tabs/address_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/birthday_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/gender_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/mobile_number_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/name_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/nic_field.dart';
import 'package:signup_screen/views/signup_screen/tabs/university_field.dart';

class FieldTabs extends StatefulWidget {
  FieldTabs({Key key}) : super(key: key);

  @override
  _FieldTabsState createState() => _FieldTabsState();
}

class _FieldTabsState extends State<FieldTabs> {
  var fields = [
    NameField(),
    BirthdayField(),
    NICField(),
    MobileNumberField(),
    GenderField(),
    AddressField(),
    UniversityField(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: fields.length,
        child: Container(
            child: Builder(
          builder: (BuildContext context) => Column(
            children: [
              Expanded(child: TabBarView(children: fields)),
              TabPageSelector(
                selectedColor: Color(0xff367c74),
              ),
              SpaceBox(
                boxHeight: 15,
              )
            ],
          ),
        )),
      ),
    );
  }
}
