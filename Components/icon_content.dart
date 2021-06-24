import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label,this.image});

  final IconData icon;
  final String label;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )

      ],
    );
  }
}
