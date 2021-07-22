import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {Key key,
      this.hintText,
      this.lblText,
      this.inputLines,
      this.inputController,
      this.inputType,
      this.validatorFunc})
      : super(key: key);
  final String lblText;
  final String hintText;
  final int inputLines;
  final TextEditingController inputController;
  final Function validatorFunc;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    int _maxlines;
    if (inputLines == null) {
      _maxlines = 1;
    } else {
      _maxlines = inputLines;
    }
    return TextFormField(
      keyboardType: inputType,
      validator: validatorFunc,
      controller: inputController,
      maxLines: _maxlines,
      decoration: InputDecoration(
          labelText: lblText.toUpperCase(),
          labelStyle:
              TextStyle(color: Color(0xff367C74), fontWeight: FontWeight.bold),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xff367C74))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xff306f68)))),
    );
  }
}
