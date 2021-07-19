import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key key, this.btntext, this.btnfunc}) : super(key: key);
  final String btntext;
  final Function btnfunc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnfunc,
      child: Text(
        btntext,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
