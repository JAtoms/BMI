import 'package:bmi/reusableCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    title: Text('YOUR RESULT'),
    centerTitle: true,
  );
}

class BMIDetailPage extends StatefulWidget {
  @override
  _BMIDetailPageState createState() => _BMIDetailPageState();
}

class _BMIDetailPageState extends State<BMIDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [ReusableCard()],
      ),
    );
  }
}
