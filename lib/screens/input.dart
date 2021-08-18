import 'package:flutter/material.dart';
import 'dart:ui';
import '../constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';



class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        margin: EdgeInsets.all(24),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Column(
                // even space distribution
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset('images/Volunteering-amico.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Volunteers do not necessarily have the time; they just have the heart. ",
                        textAlign: TextAlign.center,
                        style: kLabelTextStyle,
                      ),
                      SizedBox(height: 24,),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                color:  kTitleColour,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/second');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text("SIGN IN"),
                                ),


                              ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36),
                                  side: BorderSide(color: Colors.purple[300]),
                                ),

                                onPressed: () {
                                  Navigator.pushNamed(context, '/first');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text("LOGIN"),
                                ),
        ),
                            ),
                          ],

                        ),

                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],),
            );
          },
        ),
      ),
    );
  }
}
