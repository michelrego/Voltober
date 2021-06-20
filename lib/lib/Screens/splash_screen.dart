import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    var d=Duration(seconds: 2);
    Future.delayed(d,(){
      Navigator.pushNamed(context, '/');
    },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          Center(child: Image.asset('images/finallogo.png')),
          Text("VOLTOBER",
            style: kTitleTextStyle,
          )
    ],
      ),

    );
  }
}

