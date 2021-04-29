import 'package:bmi/reusableCards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

Widget appBar() {
  return AppBar(title: Text('BMI CALCULATOR'), centerTitle: true);
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int bmiValue = 120;
int ageValue = 25;
int weightValue = 74;

Gender selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          color: (selectedGender == Gender.male)
                              ? kActiveCardColor
                              : kInactiveCardColor,
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
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          color: (selectedGender == Gender.female)
                              ? kActiveCardColor
                              : kInactiveCardColor,
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
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 12),
                          child: Text(
                            'HEIGHT',
                            style: kLabelTestStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              bmiValue.toString(),
                              style: kLabelBoldTestStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                'cm',
                                style: kLabelMediumTestStyle,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbColor: kBottomCardColor,
                                overlayColor: Color(0X29EB1555),
                                activeTrackColor: Colors.white),
                            child: Slider(
                              value: bmiValue.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  bmiValue = newValue.toInt();
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
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
                          color: kActiveCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kLabelTestStyle,
                              ),
                              Text(
                                weightValue.toString(),
                                style: kLabelBoldTestStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                      onPress: () {
                                        setState(() {
                                          weightValue++;
                                        });
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.plus,
                                        color: Colors.white,
                                      )),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  RoundButton(
                                    onPress: () {
                                      setState(() {
                                        weightValue--;
                                      });
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableCard(
                          mLeft: 10,
                          mTop: 25,
                          mRight: 30,
                          mBottom: 15,
                          color: kActiveCardColor,
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
              color: kBottomCardColor,
              cardChild: Center(
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: kLabelBodyTestStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
