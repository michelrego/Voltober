import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import '../Components/widgets.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class Oldage extends StatefulWidget {

  @override
  _OldageState createState() => _OldageState();
}

class _OldageState extends State<Oldage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor:kTitleColour,
        title: Text('Oldage Homes', style: kDashTitleTextStyle),
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
                    colour:kCardColour,
                    cardChild: Reusable(
                      label: "Green Oldage Home",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 30th July 21',
                      labelSide: 'Apply by 20th July\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "We Are For You",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st Aug 21',
                      labelSide: 'Apply by 29th July\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Hearty Home",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st Aug 21',
                      labelSide: 'Apply by 29th July\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Sweet Home",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st Aug 21',
                      labelSide: 'Apply by 29th July\'21 ',
                      onPress: () {
                        Navigator.pushNamed(context, '/output');
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Sunflower Home ",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st Aug 21',
                      labelSide: 'Apply by 29th July\'21 ',
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