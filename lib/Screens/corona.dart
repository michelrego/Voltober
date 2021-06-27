import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import '../Components/widgets.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class Corona extends StatefulWidget {

  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: kTitleColour,
        centerTitle: true,
        title: Text('Covid Help', style: kDashTitleTextStyle),
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
                      label: "Help us",
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
                      label: "After effect of covid",
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
                      label: "Help them,Help us",
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
                      label: "Smart Help ",
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
                      label: "Covid relief Foundation",
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
