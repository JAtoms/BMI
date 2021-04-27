import 'package:bmi/reusableCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

final cardColor = 0XFF1D1E33, bottomCardColor = 0XFFEB1555;

Widget appBar() {
  return AppBar(title: Text('BMI CALCULATOR'), centerTitle: true);
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 30,
                          mTop: 40,
                          mRight: 0,
                          mBottom: 0,
                          color: Color(cardColor),
                          cardChild: GenderWidget(
                            gender: 'MALE',
                            genderIcon: FontAwesomeIcons.mars,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 10,
                          mTop: 40,
                          mRight: 30,
                          mBottom: 0,
                          color: Color(cardColor),
                          cardChild: GenderWidget(
                            gender: 'FEMALE',
                            genderIcon: FontAwesomeIcons.venus,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ReusableCard(
                    mLeft: 30,
                    mTop: 25,
                    mRight: 30,
                    mBottom: 0,
                    color: Color(cardColor),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 30,
                          mTop: 25,
                          mRight: 0,
                          mBottom: 15,
                          color: Color(cardColor),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 10,
                          mTop: 25,
                          mRight: 30,
                          mBottom: 15,
                          color: Color(cardColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              mLeft: 0,
              mTop: 16,
              mRight: 0,
              mBottom: 0,
              color: Color(bottomCardColor),
            ),
          )
        ],
      ),
    );
  }
}
