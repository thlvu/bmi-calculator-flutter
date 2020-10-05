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
    return Container(
      padding: EdgeInsets.all(commonPadding),
      decoration: BoxDecoration(
        color: inactiveColor,
        borderRadius: BorderRadius.circular(buttonBorderRadius),
      ),
      child: Column(
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
            min: minHeight.toDouble(),
            max: maxHeight.toDouble(),
            onChanged: (double value) {
              setState(() {
                height = value.round();
                trackingCall(height);
              });
            },
          )
        ],
      ),
    );
  }
}
