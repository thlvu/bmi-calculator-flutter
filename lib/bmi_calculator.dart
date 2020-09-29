import 'package:bmi_calculator/common.dart';

class BMICalculator {
  BMICalculator({this.height, this.weight});
  int height;
  int weight;
  double _bmi;
  BMIResult bmiResult;

  double get bmi => _bmi;

  double calculate() {
    double w = weight.toDouble();
    double h = height.toDouble() / 100.0;

    _bmi = w / (h * h);

    if (_bmi >= 25) {
      bmiResult = BMIResult.overweight;
    } else if (_bmi >= 18.5) {
      bmiResult = BMIResult.normal;
    } else {
      bmiResult = BMIResult.underweight;
    }

    return _bmi;
  }

  String getResult() {
    switch (bmiResult) {
      case BMIResult.overweight: {
        return 'Overweight';
      }
      case BMIResult.normal: {
        return 'Normal';
      }
      case BMIResult.underweight: {
        return 'Underweight';
      }
      default:
        return '';
    }
  }

  String getInterpret() {
    switch (bmiResult) {
      case BMIResult.overweight: {
        return 'You have a higher than normal body weight. Try to exercise more.';
      }
      case BMIResult.normal: {
        return 'You have a normal body weight. Good job!';
      }
      case BMIResult.underweight: {
        return 'You have a lower than normal body weight. You can eat a bit more.';
      }
      default:
        return '';
    }
  }
}
