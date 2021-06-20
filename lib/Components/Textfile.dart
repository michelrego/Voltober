import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Reusable extends StatelessWidget {
  Reusable({  this.cardChild, this.onPress,this.label,this.labelMain,this.labelSub,this.labelSide});
  final Widget cardChild;
  final Function onPress;
  final String label;
  final String labelMain;
  final String labelSub;
  final String labelSide;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: kEventTitleTextStyle,
        ),
        SizedBox(height: 10,),
        Text(
          labelMain,
          style:kLabelTextStyle,
        ),
        SizedBox(height: 10,),
        Text(
          labelSub,
          style:kLabelTextStyle,
        ),
        Divider(
          height: 10,
          color: Colors.black,
        ),
        Row(
        children: <Widget>[
            Text(
              labelSide,
              style:kLabelTextStyle,
            ),
            SizedBox(width: 70,),

          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return 16;
                    return null;
                  }),
            ),
            onPressed: onPress,
            child: Text('Apply'),
          )






      ],
    ),
    ],
    );
  }
}
