import 'package:flutter/material.dart';
import 'package:volunteering/Screens/Beachclean.dart';
import 'package:volunteering/Screens/output_page.dart';
import 'package:volunteering/Screens/splash_screen.dart';
import 'package:volunteering/Screens/straycare.dart';
import 'package:volunteering/Screens/input.dart';
import 'package:volunteering/Screens/Login.dart';
import 'package:volunteering/Screens/signup.dart';
import 'package:volunteering/Screens/Dashboard.dart';
import 'package:volunteering/Screens/events.dart';
import 'package:volunteering/Screens/roadside.dart';


void main() => runApp(Voltober());


class Voltober extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashscreen',
        routes: {
          'splashscreen': (context) => SplashScreen(),
          '/': (context) => Input(),
          '/first': (context) => Login(),
          '/second': (context) => Signup(),
          '/third': (context)=> Dashboard(),
          '/fourth': (context)=> Events(),
          '/fiveth':(context) =>Straycare(),
          '/six':(context)=>Roadside(),
          '/seven':(context)=> Beach(),
          '/output':(context)=>Output(),
        }
    );
  }
}


