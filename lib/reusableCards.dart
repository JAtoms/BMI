import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final double mLeft, mTop, mRight, mBottom;
  final Widget cardChild;

  ReusableCard(
      {@required this.mLeft,
      @required this.mTop,
      @required this.mRight,
      @required this.mBottom,
      @required this.color,
      @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      margin: EdgeInsets.fromLTRB(mLeft, mTop, mRight, mBottom),
      child: cardChild,
    );
  }
}
