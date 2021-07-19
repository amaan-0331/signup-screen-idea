import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class BirthdayInput extends StatefulWidget {
  BirthdayInput({Key key, this.lblText, this.hintText}) : super(key: key);
  @required
  final String lblText;
  final String hintText;
  @override
  _BirthdayInputState createState() => _BirthdayInputState();
}

class _BirthdayInputState extends State<BirthdayInput> {
  DateTime birthday;
  int year;
  int age;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: DateTimeFormField(
              decoration: InputDecoration(
                  labelText: widget.lblText.toUpperCase(),
                  // labelText: "Birthday".toUpperCase(),
                  labelStyle: TextStyle(
                      color: Color(0xff367C74), fontWeight: FontWeight.bold),
                  hintText: widget.hintText,
                  // hintText: "Your Birthday Goes here...",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xff367C74))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xff306f68)))),
              mode: DateTimeFieldPickerMode.date,
              onDateSelected: (DateTime value) {
                print(value);
                birthday = value;
                setState(() {
                  year = value.year;
                  age = DateTime.now().year - value.year;
                });
              },
            ),
          ),
          Container(
              width: 80,
              padding: EdgeInsets.all(10),
              child: BuildAgeText(year, age))
        ],
      ),
    );
  }
}

class BuildAgeText extends StatelessWidget {
  final dynamic year;
  final int age;

  const BuildAgeText(this.year, this.age);

  Widget build(BuildContext context) {
    if (year is int) {
      return Text(
        '$age years\nold',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff367c74),
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Icon(
        Icons.calendar_today,
        color: Color(0xff367c74),
      );
    }
  }
}
