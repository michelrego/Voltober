import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';
import 'package:volunteering/Components/widgets.dart';
import '../Components/Reusable_cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/icon_content.dart';
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
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Voltober',
              style:kDashTitleTextStyle
          ),
        ),
      ),
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
                    height: 250,
                    child: ReusableCard(
                      colour:kCardColour,
                      onPress: () {
                        Navigator.pushNamed(context, '/fourth');
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.userSecret,
                        label: 'PARTICIPATE',
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    child: ReusableCard(
                      colour: kCardColour,
                      onPress: () {},
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.screwdriver,
                        label: 'CREATE',
                      ),
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



