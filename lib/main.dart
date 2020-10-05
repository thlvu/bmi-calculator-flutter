import 'package:flutter/material.dart';
import 'input_page/input_page.dart';
import 'result_page.dart';
import 'common.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: themePrimaryColor,
          scaffoldBackgroundColor: themeScaffoldBgColor,
          sliderTheme: SliderTheme.of(context).copyWith(
              activeTrackColor: sliderThemeActiveTrackColor,
              inactiveTrackColor: sliderThemeInactiveTrackColor,
              thumbColor: sliderThumbColor,
              overlayColor: sliderOverlayColor,
              thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: sliderThumbRadius),
              overlayShape:
                  RoundSliderOverlayShape(overlayRadius: sliderOverlayRadius)),
        ),
        initialRoute: '/input_page',
        routes: {
          '/input_page': (context) => InputPage(),
          '/result_page': (context) => ResultPage(),
        });
  }
}

// class InputPage extends StatefulWidget {
//   @override
//   _InputPageState createState() => _InputPageState();
// }
//
// class _InputPageState extends State<InputPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI CALCULATOR'),
//       ),
//       body: Center(
//         child: Text('Body Text'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
