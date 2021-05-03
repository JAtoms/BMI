import 'file:///D:/Mobile%20Apps/FlutterProjects/bmi/lib/component/reusableCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

Widget appBar() {
  return AppBar(
    title: Text('YOUR RESULT'),
    centerTitle: true,
  );
}

class BMIDetailPage extends StatelessWidget {
  final String _weightInfo, _weightResult, _weightTip;

  BMIDetailPage(this._weightInfo, this._weightResult, this._weightTip);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: ReusableCard(
              mTop: 16,
              mBottom: 80,
              mLeft: 20,
              mRight: 20,
              color: kActiveCardColor,
              cardChild: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 40),
                    child: Text(
                      _weightInfo,
                      style: kLabelTestStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      _weightResult,
                      style: kLabelBolderTestStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'Normal BMI range:',
                      style: kLabelColoredSmallBodyTestStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Text(
                      '18.5 - 25 kg/m2',
                      style: kLabelSmallBodyTestStyle,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 80),
                      child: Text(
                        _weightTip,
                        style: kLabelSmallBodyTestStyle,
                      ),
                    ),
                  ),
                  RoundEdgeButton(
                    text: Text(
                      'SAVE',
                      style: kLabelBodyTestStyle,
                    ),
                    onPress: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundEdgeButton extends StatelessWidget {
  final Text text;
  final Function onPress;

  RoundEdgeButton({this.onPress, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kBottomCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 150, height: 50),
      child: text,
    );
  }
}
