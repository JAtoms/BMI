import 'package:bmi/reusableCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFFF111328);
const bottomCardColor = Color(0XFFEB1555);

enum Gender { male, female }

Widget appBar() {
  return AppBar(title: Text('BMI CALCULATOR'), centerTitle: true);
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;

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
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: ReusableCard(
                            mLeft: 30,
                            mTop: 40
                            mRight: 0,
                            mBottom: 0,
                            color: (selectedGender == Gender.male)
                                ? activeCardColor
                                : inactiveCardColor,
                            cardChild: GenderWidget(
                              gender: 'MALE',
                              genderIcon: FontAwesomeIcons.mars,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          child: ReusableCard(
                            mLeft: 10,
                            mTop: 40,
                            mRight: 30,
                            mBottom: 0,
                            color: (selectedGender == Gender.female)
                                ? activeCardColor
                                : inactiveCardColor,
                            cardChild: GenderWidget(
                              gender: 'FEMALE',
                              genderIcon: FontAwesomeIcons.venus,
                            ),
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
                    color: activeCardColor,
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
                          color: activeCardColor,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 10,
                          mTop: 25,
                          mRight: 30,
                          mBottom: 15,
                          color: activeCardColor,
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
              color: bottomCardColor,
            ),
          )
        ],
      ),
    );
  }
}
