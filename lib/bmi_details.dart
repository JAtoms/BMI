import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    title: Text('BMI Details'),
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
    return Scaffold();
  }
}
