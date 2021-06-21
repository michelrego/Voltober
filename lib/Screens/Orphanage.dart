import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import '../Components/widgets.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class Orphanage extends StatefulWidget {

  @override
  _OrphanageState createState() => _OrphanageState();
}

class _OrphanageState extends State<Orphanage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Orphanages', style: kDashTitleTextStyle),
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
                    label: "Sunshine Orphanage",
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
                    label: "sunflower Orphanage",
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
                    label: "little flower",
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
                    label: "Sweet Home Orphanage",
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
                    label: "Gandhi Foundation ",
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
