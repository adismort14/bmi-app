import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final double heightCard;
  final Widget cardChild;

  ReusableCard(
      {required this.colour,
      required this.heightCard,
      required this.cardChild});
  // this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      // color: Color(activeCardColour),
      // width: 170,
      height: heightCard,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: colour),
    );
  }
}
