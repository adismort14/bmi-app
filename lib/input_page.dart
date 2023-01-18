import 'package:flutter/material.dart';

const activeCardColour = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColour),
                  heightCard: 220,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColour),
                  heightCard: 220,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: Color(activeCardColour),
            heightCard: 200,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColour),
                  heightCard: 220,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(activeCardColour),
                  heightCard: 220,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Color(0xFFEB1555),
          margin: EdgeInsets.only(top: 5),
          height: 35,
        )
      ]),
    );
    ;
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final double heightCard;
  // Widget cardChild:null;

  ReusableCard({
    required this.colour,
    required this.heightCard,
  });
  // this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(activeCardColour),
      // width: 170,
      height: heightCard,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: colour),
    );
  }
}
