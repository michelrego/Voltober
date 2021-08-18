import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:volunteering/Screens/create.dart';
import 'package:volunteering/constants.dart';
import 'package:volunteering/Components/widgets.dart';
import '../Components/Reusable_cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/icon_content.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
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
          child: Text('Voltober',
              style:kDashTitleTextStyle
          ),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: double.infinity,
                    child: ReusableCard(
                      colour:kCardColour,
                      onPress: () {
                        Navigator.pushNamed(context, '/fourth');
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.userSecret,
                        label: 'PARTICIPATE',
                      ),),),
                  Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: double.infinity,
                    child: ReusableCard(
                      colour: kCardColour,
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Create()));
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.screwdriver,
                        label: 'CREATE',
                      ),),),],),);
          },
        ),
      ),
    );
  }
}

