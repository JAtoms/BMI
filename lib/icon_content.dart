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
          style: TextStyle(fontSize: 18, color: Color(0XFF8D8E98)),
        )
      ],
    );
  }
}
