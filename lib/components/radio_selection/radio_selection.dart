import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signup_screen/utils/constants.dart';

class RadioSelectionOption extends StatefulWidget {
  RadioSelectionOption(
      {Key key,
      this.groupField,
      this.selectiontext,
      this.radioFunc,
      this.radioValue})
      : super(key: key);
  final dynamic groupField;
  final dynamic radioValue;
  final String selectiontext;
  final Function radioFunc;
  @override
  _RadioSelectionOptionState createState() => _RadioSelectionOptionState();
}

class _RadioSelectionOptionState extends State<RadioSelectionOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: ListTile(
              // onTap: widget.radioFunc,
              title: Text(
                widget.selectiontext,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 10,
            child: Radio<gender>(
              activeColor: Color(0xff367c74),
              value: widget.radioValue,
              groupValue: widget.groupField,
              onChanged: widget.radioFunc,
            ),
          ),
        ],
      ),
    );
  }
}
