import 'file:///D:/Mobile%20Apps/FlutterProjects/bmi/lib/constants/constants.dart';
import 'package:flutter/material.dart';

// Widget contains properties for each gender displayed
class GenderWidget extends StatelessWidget {
  final String gender;
  final IconData genderIcon;

  GenderWidget({
    @required this.gender,
    @required this.genderIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(
            genderIcon,
            size: 80,
          ),
        ),
        Text(
          gender,
          style: kLabelTestStyle,
        )
      ],
    );
  }
}
