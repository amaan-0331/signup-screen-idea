import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({Key key, this.btnfunc}) : super(key: key);
  final Function btnfunc;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: btnfunc,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width / 8),
            shape: CircleBorder()),
        child: Icon(Icons.chevron_left));
  }
}
