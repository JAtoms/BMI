import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Widget icon;
  final Function onPress;

  RoundButton({this.onPress, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: Color(0XFF4C4F5E),
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      child: icon,
    );
  }
}
