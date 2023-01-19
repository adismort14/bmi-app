import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final IconData iconType;

  GenderCard({required this.gender, required this.iconType});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: FaIcon(iconType),
            iconSize: 80.0,
          ),
          Text(
            gender,
            style: kLabelTextStyle,
          ),
        ]);
  }
}
