import 'package:flutter/material.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/Components/Textfile.dart';
import 'package:volunteering/Components/dialog_box.dart';
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
        backgroundColor: kTitleColour,
        title: Text('STRAY CARE', style: kDashTitleTextStyle,
        ),
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
                      label: "DOG CARE",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dailog_Box()));
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "ANIMAL RESCUE",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dailog_Box()));
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "DOGSTAR FOUNDATION",
                     labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dailog_Box()));
                      },
                    ),
                  ),
                  ReusableCard(
                    colour:kCardColour,
                    cardChild: Reusable(
                      label: "LOVE FOR FORGOTTEN",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dailog_Box()));
                      },
                    ),
                  ),
                  ReusableCard(
                    colour: kCardColour,
                    cardChild: Reusable(
                      label: "Sarvoham Animal Foundation",
                      labelMain: 'Mangalore',
                      labelSub: 'Internship| Unpaid| 1st July 21',
                      labelSide: 'Apply by 29th June\'21 ',
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dailog_Box()));
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
