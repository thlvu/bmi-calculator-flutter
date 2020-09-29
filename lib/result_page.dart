import 'package:flutter/material.dart';
import 'common.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    double bmi = args['bmi'];
    String result = args['result'];
    String interpret = args['interpret'];

    return commonWrapper(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Your BMI',
              style: titleTextStyle,
            ),
          ),
          Center(
            child: Text(
              bmi.toStringAsFixed(1),
              style: titleTextStyle,
            ),
          ),
          Center(
            child: Text(
              result,
              style: titleTextStyle,
            ),
          ),
          Center(
            child: Text(
              interpret,
              style: descTextStyle,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: submitButtonColor,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: titleTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
