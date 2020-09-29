import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Scaffold commonWrapper(Widget widget) {
  return Scaffold(
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(commonPadding),
        color: Colors.green,
        child: widget,
      )
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
  color: Colors.white,
  fontWeight: FontWeight.w900,
  fontSize: 20.0,
);

const TextStyle numberTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
);

const TextStyle descTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

SizedBox rowSizedBox = SizedBox(
  width: 10.0,
);

SizedBox columnSizedBox = SizedBox(
  height: 20.0,
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
const Color activeColor = Colors.blue;
const Color inactiveColor = Colors.grey;
const Color iconColor = Colors.white;
const Color submitButtonColor = Colors.red;
const Color iconBackgroundColor = Colors.black12;
const int initHeight = 170;
const int initWeight = 60;
const int initAge = 30;
const double buttonBorderRadius = 10.0;
const double iconSize = 30.0;
const double commonPadding = 20.0;
