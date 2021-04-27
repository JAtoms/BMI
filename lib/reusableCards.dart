import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final color;
  final double mLeft, mTop, mRight, mBottom;
  final Widget cardChild;
  final Function onPress;

  ReusableCard(
      {@required this.mLeft,
      @required this.mTop,
      @required this.mRight,
      @required this.mBottom,
      @required this.color,
      @required this.cardChild,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        margin: EdgeInsets.fromLTRB(mLeft, mTop, mRight, mBottom),
        child: cardChild,
      ),
    );
  }
}
