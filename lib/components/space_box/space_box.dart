import 'package:flutter/material.dart';

// enum HeightSize { OneTenth, Half, ThreeQuarter }
// enum WidthSize {OneTenth, Half, ThreeQuarter}

class SpaceBox extends StatelessWidget {
  const SpaceBox({Key key, this.boxHeight, this.boxWidth}) : super(key: key);
  final double boxHeight;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeight,
      width: boxWidth,
    );
  }
}
