import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:volunteering/Events/Beachclean.dart';
import 'package:volunteering/Screens/output_page.dart';
import 'package:volunteering/Screens/reset.dart';
import 'package:volunteering/Screens/splash_screen.dart';
import 'package:volunteering/Events/straycare.dart';
import 'package:volunteering/Screens/input.dart';
import 'package:volunteering/Login.dart';
import 'package:volunteering/signIn.dart';
import 'package:volunteering/Screens/Dashboard.dart';
import 'package:volunteering/Screens/events.dart';
import 'package:volunteering/Events/roadside.dart';

import 'Events/corona.dart';
import 'Events/oldage.dart';
import 'Events/orphanage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Voltober());
}


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
          '/eigth':(context)=>Oldage(),
          '/nine':(context)=>Orphanage(),
          '/ten':(context)=>Corona(),
          '/el':(context)=>reset(),
          '/output':(context)=>Output(),
        }
    );
  }
}


