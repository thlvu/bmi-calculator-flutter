import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:bmi_calculator/common.dart';

class GenderRow extends StatefulWidget {
  @override
  _GenderRowState createState() => _GenderRowState();
}

class _GenderRowState extends State<GenderRow> {
  Gender gender;
  static final Color _activeColor = activeColor;
  static final Color _inactiveColor = inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: _GenderButton(
            onTapCall: () {
              setState(() {
                this.gender = Gender.male;
              });
            },
            backgroundColor:
                gender == Gender.male ? _activeColor : _inactiveColor,
            iconData: MdiIcons.genderMale,
            title: maleTitle,
          ),
        ),
        rowSizedBox,
        Expanded(
          child: _GenderButton(
            onTapCall: () {
              setState(() {
                this.gender = Gender.female;
              });
            },
            backgroundColor:
                gender == Gender.female ? _activeColor : _inactiveColor,
            iconData: MdiIcons.genderFemale,
            title: femaleTitle,
          ),
        ),
      ],
    );
  }
}

class _GenderButton extends StatelessWidget {
  _GenderButton(
      {this.onTapCall, this.backgroundColor, this.iconData, this.title});

  final Function onTapCall;
  final Color backgroundColor;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCall,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
            Text(
              title,
              style: titleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
