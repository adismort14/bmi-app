import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender_card.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender {
  male,
  female,
  none,
}

class _InputPageState extends State<InputPage> {
  // Color maleCardCol = inactiveCardColour;
  // Color femaleCardCol = inactiveCardColour;
  //
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     maleCardCol = activeCardColour;
  //     femaleCardCol = inactiveCardColour;
  //   } else {
  //     femaleCardCol = activeCardColour;
  //     maleCardCol = inactiveCardColour;
  //   }
  // }
  Gender selectedGender = Gender.none;
  int userHeight = 180;
  int userWeight = 80;
  int userAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      heightCard: 220,
                      cardChild: GenderCard(
                          iconType: FontAwesomeIcons.mars, gender: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      heightCard: 220,
                      cardChild: GenderCard(
                          iconType: FontAwesomeIcons.venus, gender: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              heightCard: 200,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        userHeight.toString(),
                        style: kHeightNumber,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 40.0),
                        overlayColor: Color(0x15EB1555),
                        thumbColor: Color(0xFFEB1555),
                        inactiveTrackColor: Color(0xFF8D8B98),
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 20.0)),
                    child: Slider(
                      value: userHeight.toDouble(),
                      onChanged: (double newHeight) {
                        setState(() {
                          userHeight = newHeight.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    heightCard: 220,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          userWeight.toString(),
                          style: kHeightNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              iconD: FontAwesomeIcons.minus,
                              onPressFun: () {
                                setState(() {
                                  userWeight--;
                                });
                              },
                            ),
                            RoundIconButton(
                              iconD: FontAwesomeIcons.plus,
                              onPressFun: () {
                                setState(
                                  () {
                                    userWeight++;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    heightCard: 220,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          userAge.toString(),
                          style: kHeightNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              iconD: FontAwesomeIcons.minus,
                              onPressFun: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                            ),
                            RoundIconButton(
                              iconD: FontAwesomeIcons.plus,
                              onPressFun: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 5),
            height: 60,
            child: Center(
              child: Text(
                "Calculate your BMI",
                style: kLabelTextStyle.copyWith(fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.iconD, required this.onPressFun});
  final IconData iconD;
  final Function onPressFun;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconD),
      onPressed: () {
        onPressFun();
      },
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}
