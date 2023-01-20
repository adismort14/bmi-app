import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  late String state;
  late String resultBmi;
  late String advice;

  ResultPage(
      {required this.resultBmi, required this.advice, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Your BMI Result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ReusableCard(
            colour: kInactiveCardColour,
            heightCard: 550,
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  state,
                  style: TextStyle(fontSize: 35, color: Colors.green),
                ),
                Text(
                  resultBmi,
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w900),
                ),
                Text(
                  advice,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 5),
              height: 65,
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: kLabelTextStyle.copyWith(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
