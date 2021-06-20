import 'package:flutter/material.dart';
import 'dart:ui';
import '../constants.dart';


class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            // we will give media query height
            // double.infinity make it big as my parent allows
            // while MediaQuery make it big as per the screen

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              // even space distribution
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset('images/Volunteering-amico.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Volunteers do not necessarily have the time; they just have the heart. ",
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    ),
                    SizedBox(width: 45,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36),
                              ),
                              color:Colors.purple[300],
                                onPressed: (){
                                  Navigator.pushNamed(context,'/second');
                                },
                              child:Container(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                alignment:Alignment.center,
                                width:double.infinity,
                                child:Text("SIGN IN"),
                              ),


                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36),
                                side: BorderSide(color:Colors.purple[300]),
                              ),

                              onPressed: (){
                                Navigator.pushNamed(context,'/first');
                              },
                              child:Container(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                alignment:Alignment.center,
                                width:double.infinity,
                                child:Text("LOGIN"),
                              ),


                            ),
                          ),
                        ],

                      ),
                    )
                  ],
                ),
                ],),
          )),
    );
  }
}
