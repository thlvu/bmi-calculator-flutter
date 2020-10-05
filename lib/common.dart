import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Scaffold commonWrapper({@required Widget widget, @required AppBar appBar}) {
  return Scaffold(
    appBar: appBar,
    body: Container(
      child: widget,
    ),
  );
}

class IntValueKeeper {
  IntValueKeeper({this.value});
  int value;
}

enum Gender {
  male,
  female,
}

enum BMIResult {
  overweight,
  normal,
  underweight,
}

const TextStyle titleTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
);

const TextStyle numberTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const TextStyle descTextStyle = titleTextStyle;

SizedBox rowSizedBox = SizedBox(
  width: 10.0,
);

SizedBox columnSizedBox = SizedBox(
  height: 15.0,
);

const String maleTitle = 'MALE';
const String femaleTitle = 'FEMALE';
const String heightTitle = 'HEIGHT';
const String weightTitle = 'WEIGHT';
const String ageTitle = 'AGE';
const String heightSuffix = ' cm';
const String weightSuffix = ' kg';
const String ageSuffix = ' years old';

const IconData maleIconData = MdiIcons.genderMale;
const IconData femaleIconData = MdiIcons.genderFemale;
const IconData plus1 = Icons.add;
const IconData minus1 = MdiIcons.minus;

const Color themePrimaryColor = Color(0xFF0A0E21);
const Color themeScaffoldBgColor = Color(0xFF0A0E21);
const Color sliderThemeActiveTrackColor = Colors.white;
const Color sliderThemeInactiveTrackColor = Color(0xFF8D8E98);
const Color sliderThumbColor = Color(0xFFEB1555);
const Color sliderOverlayColor = Color(0x29EB1555);
const Color activeColor = Color(0xFF1D1E33);
const Color inactiveColor = Color(0xFF111328);
const Color iconColor = Colors.white;
const Color submitButtonColor = Color(0xFFEB1555);
const Color iconBackgroundColor = Color(0xFF4C4F5E);

const int minHeight = 120;
const int maxHeight = 220;
const int initHeight = 180;
const int initWeight = 60;
const int initAge = 30;

const double buttonBorderRadius = 10.0;
const double iconSize = 80.0;
const double flatButtonSize = 56.0;
const double commonPadding = 15.0;
const double oneSidePadding = 10.0;
const double submitButtonHeight = 80.0;
const double sliderThumbRadius = 15.0;
const double sliderOverlayRadius = 30.0;