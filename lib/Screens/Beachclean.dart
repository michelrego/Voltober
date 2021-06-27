import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import '../Components/widgets.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class Beach extends StatefulWidget {

  @override
  _BeachState createState() => _BeachState();
}

class _BeachState extends State<Beach> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: kTitleColour,
        centerTitle: true,
        title: Text('BEACH CLEANING', style: kDashTitleTextStyle),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Trash Free Sea",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour:kCardColour,
                    cardChild: Reusable(
                      label: "Beach Cleansing",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Versova Beach Clean-up.",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Someshwar",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Sarvoham Foundation ",
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
      ),
    );
  }
}
