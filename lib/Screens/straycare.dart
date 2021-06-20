import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import '../Components/widgets.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';


class Straycare extends StatefulWidget {
  @override
  _StraycareState createState() => _StraycareState();
}

class _StraycareState extends State<Straycare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('STRAY CARE', style: kDashTitleTextStyle),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ReusableCard(
                  colour: Colors.blueGrey,
                  cardChild: Reusable(
                    label: "DOG CARE",
                    labelMain: 'Mangalore',
                    labelSub: 'Internship| Unpaid| 1st July 21',
                    labelSide: 'Apply by 29th June\'21 ',
                    onPress: () {
                      Navigator.pushNamed(context, '/output');
                    },
                  ),
                ),
                ReusableCard(
                  colour: Colors.blueGrey,
                  cardChild: Reusable(
                    label: "ANIMAL RESCUE",
                    labelMain: 'Mangalore',
                    labelSub: 'Internship| Unpaid| 1st July 21',
                    labelSide: 'Apply by 29th June\'21 ',
                    onPress: () {
                      Navigator.pushNamed(context, '/output');
                    },
                  ),
                ),
                ReusableCard(
                  colour: Colors.blueGrey,
                  cardChild: Reusable(
                    label: "DOGSTAR FOUNDATION",
                   labelMain: 'Mangalore',
                    labelSub: 'Internship| Unpaid| 1st July 21',
                    labelSide: 'Apply by 29th June\'21 ',
                    onPress: () {
                      Navigator.pushNamed(context, '/output');
                    },
                  ),
                ),
                ReusableCard(
                  colour: Colors.blueGrey,
                  cardChild: Reusable(
                    label: "LOVE FOR FORGOTTEN",
                    labelMain: 'Mangalore',
                    labelSub: 'Internship| Unpaid| 1st July 21',
                    labelSide: 'Apply by 29th June\'21 ',
                    onPress: () {
                      Navigator.pushNamed(context, '/output');
                    },
                  ),
                ),
                ReusableCard(
                  colour: Colors.blueGrey,
                  cardChild: Reusable(
                    label: "Sarvoham Animal Foundation",
                    labelMain: 'Mangalore',
                    labelSub: 'Internship| Unpaid| 1st July 21',
                    labelSide: 'Apply by 29th June\'21 ',
                    onPress: () {
                      Navigator.pushNamed(context, '/output');
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
