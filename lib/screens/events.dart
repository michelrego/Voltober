import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:volunteering/Components/Reusable_cards.dart';
import 'package:volunteering/constants.dart';
import 'package:volunteering/Components/icon_content.dart';
import 'package:volunteering/Components/widgets.dart';

class Events extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: kTitleColour,
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('EVENTS',
              style:kDashTitleTextStyle
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
                  children:<Widget>[
                    Expanded(
                      child:Row(
                        children: <Widget>[
                          Expanded(
                              child:ReusableCard(
                                colour:kCardColour,
                                onPress: () {
                                  Navigator.pushNamed(context, '/fiveth');
                                },
                                cardChild:IconContent(
                                  label: 'StrayCare',
                                  icon: FontAwesomeIcons.dog,
                                ),
                              ),
                              ),
                          Expanded(
                            child:ReusableCard(
                            colour: kCardColour,
                            onPress: () {
                              Navigator.pushNamed(context, '/six');
                            },
                            cardChild:IconContent(
                              icon: FontAwesomeIcons.dumpster ,
                              label: 'RoadSide Cleaning',
                            ),
                          ),),
                        ],
                      )),
                    Expanded(
                      child:Row(
                        children: <Widget>[
                          Expanded(child:
                          ReusableCard(
                            colour: kCardColour,
                            onPress: () {
                              Navigator.pushNamed(context, '/seven');
                            },
                            cardChild:IconContent(
                              icon: FontAwesomeIcons.umbrellaBeach ,
                              label: 'BeachSide Cleaning',
                            ),
                          ),),
                          Expanded(child:
                          ReusableCard(
                            colour:kCardColour,
                            onPress: () {
                              Navigator.pushNamed(context, '/eigth');
                            },
                            cardChild:IconContent(
                              icon: FontAwesomeIcons.wheelchair,
                              label: 'OldAge ',
                            ),
                          ),),
                        ],
                      ),),
                    Expanded(
                      child:Row(
                        children: <Widget>[
                          Expanded(child:
                          ReusableCard(
                            colour: kCardColour,
                            onPress: () {
                              Navigator.pushNamed(context, '/nine');
                            },
                            cardChild:IconContent(
                              icon: FontAwesomeIcons.child ,
                              label: 'Orphange',
                            ),
                          ),),
                          Expanded(child:
                          ReusableCard(
                            colour:kCardColour,
                            onPress: () {
                              Navigator.pushNamed(context, '/ten');
                            },
                            cardChild:IconContent(
                              icon: FontAwesomeIcons.disease ,
                              label: 'Covid',
                            ),
                          ),),
                        ],
                      ),),

                  ],),
      ),

    );
  }
}
//watchmanMonitoring