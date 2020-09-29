import 'package:flutter/material.dart';
import 'package:bmi_calculator/common.dart';

class HeightSlider extends StatefulWidget {
  final IntValueKeeper heightKeeper = IntValueKeeper(value: initHeight);

  int get height => heightKeeper.value;

  @override
  _HeightSliderState createState() =>
      _HeightSliderState(trackingCall: (int value) {
        heightKeeper.value = value;
      });
}

class _HeightSliderState extends State<HeightSlider> {
  _HeightSliderState({this.trackingCall});
  int height = initHeight;
  Function trackingCall;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          heightTitle,
          style: titleTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            Text(
              height.toString(),
              style: numberTextStyle,
            ),
            Text(
              heightSuffix,
              style: descTextStyle,
            ),
          ],
        ),
        Slider(
          value: height.toDouble(),
          min: 120.0,
          max: 220.0,
          onChanged: (double value) {
            setState(() {
              height = value.round();
              trackingCall(height);
            });
          },
        )
      ],
    );
  }
}
