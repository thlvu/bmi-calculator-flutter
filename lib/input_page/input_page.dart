import 'package:bmi_calculator/common.dart';
import 'package:flutter/material.dart';
import 'gender_row.dart';
import 'height_slider.dart';
import 'weight_age_row.dart';
import '../bmi_calculator.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderRow genderRow = GenderRow();
  HeightSlider heightSlider = HeightSlider();
  WeightAgeRow weightAgeRow = WeightAgeRow();
  BMICalculator bmiCalculator;

  @override
  Widget build(BuildContext context) {
    return commonWrapper(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          genderRow,
          heightSlider,
          weightAgeRow,
          GestureDetector(
            onTap: () {
              bmiCalculator = BMICalculator(
                  height: heightSlider.height, weight: weightAgeRow.weight);
              bmiCalculator.calculate();
              Navigator.pushNamed(context, '/result_page', arguments: {
                'bmi': bmiCalculator.bmi,
                'result': bmiCalculator.getResult(),
                'interpret': bmiCalculator.getInterpret(),
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: oneSidePadding),
              color: submitButtonColor,
              height: submitButtonHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: titleTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
      appBar: inputPageAppBar
    );
  }
}

AppBar inputPageAppBar = AppBar(
  title: Text('BMI CALCULATOR'),
);
