import 'package:flutter/material.dart';
import 'package:bmi_calculator/common.dart';

class WeightAgeRow extends StatefulWidget {
  final IntValueKeeper weightKeeper = IntValueKeeper(value: initWeight);
  final IntValueKeeper ageKeeper = IntValueKeeper(value: initAge);

  int get weight => weightKeeper.value;
  int get age => ageKeeper.value;

  @override
  _WeightAgeRowState createState() => _WeightAgeRowState(
        weightTrackingCall: (int value) {
          weightKeeper.value = value;
        },
        ageTrackingCall: (int value) {
          ageKeeper.value = value;
        },
      );
}

class _WeightAgeRowState extends State<WeightAgeRow> {
  _WeightAgeRowState({this.weightTrackingCall, this.ageTrackingCall});
  Function weightTrackingCall;
  Function ageTrackingCall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: _WeightOrAgeButton(
            initValue: initWeight,
            title: weightTitle,
            trackingCall: (int value) {
              weightTrackingCall(value);
            },
            numberSuffix: weightSuffix,
          ),
        ),
        rowSizedBox,
        Expanded(
          child: _WeightOrAgeButton(
            initValue: initAge,
            title: ageTitle,
            trackingCall: (int value) {
              ageTrackingCall(value);
            },
            numberSuffix: ageSuffix,
          ),
        )
      ],
    );
  }
}

class _WeightOrAgeButton extends StatefulWidget {
  _WeightOrAgeButton(
      {this.initValue, this.title, this.trackingCall, this.numberSuffix});
  final int initValue;
  final String title;
  final Function trackingCall;
  final String numberSuffix;

  @override
  __WeightOrAgeButtonState createState() => __WeightOrAgeButtonState(
        value: initValue,
        title: title,
        trackingCall: trackingCall,
        numberSuffix: numberSuffix,
      );
}

class __WeightOrAgeButtonState extends State<_WeightOrAgeButton> {
  __WeightOrAgeButtonState({
    this.value,
    this.title,
    this.trackingCall,
    this.numberSuffix,
  });

  int value;
  final String title;
  final Function trackingCall;
  final String numberSuffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: activeColor,
        borderRadius: BorderRadius.circular(buttonBorderRadius),
      ),
      padding: EdgeInsets.all(commonPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: titleTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                value.toString(),
                style: numberTextStyle,
              ),
              Text(
                numberSuffix,
                style: descTextStyle,
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RawMaterialButton(
                  constraints: BoxConstraints.tightFor(
                    width: flatButtonSize,
                    height: flatButtonSize,
                  ),
                  onPressed: () {
                    setState(() {
                      this.value++;
                      this.trackingCall(this.value);
                    });
                  },
                  shape: CircleBorder(),
                  fillColor: iconBackgroundColor,
                  child: Icon(
                    plus1,
                    color: iconColor,
                  ),
                ),
              ),
              rowSizedBox,
              Expanded(
                child: RawMaterialButton(
                  constraints: BoxConstraints.tightFor(
                    width: flatButtonSize,
                    height: flatButtonSize,
                  ),
                  onPressed: () {
                    setState(() {
                      this.value--;
                      this.trackingCall(this.value);
                    });
                  },
                  shape: CircleBorder(),
                  fillColor: iconBackgroundColor,
                  child: Icon(
                    minus1,
                    color: iconColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
