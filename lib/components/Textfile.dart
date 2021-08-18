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
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/3.5,
      child: Column(
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
          Container(
            margin: EdgeInsets.fromLTRB(8,0,0,1),
            child: Row(
            children: <Widget>[
                Text(
                  labelSide,
                  style:kLabelTextStyle,
                ),
                SizedBox(width: 70,),

              MaterialButton(

                color: Colors.purple[300],
                onPressed: onPress,
                child: Text('Apply'),
              )
            ],
      ),
          ),
      ],
      ),
    );
  }
}
