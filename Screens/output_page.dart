import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';

class Output extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        margin: const EdgeInsets.only(top:50),
        width: double.infinity,
        height:MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder:( BuildContext context,BoxConstraints viewportConstraints) {
            return
             SingleChildScrollView(
               child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Thank You!",
                      style: kTitleTextStyle,
                    ),
                    SizedBox(height: 10,),
                    Text("Our Team will get in touch with you",
                      style: kLabelTextStyle,
                    ),
                    SizedBox(height: 10.0,),
                    Center(
                      child: Row(
                        children:<Widget> [
                          SizedBox(width: 100,),
                          Text("Having Trouble?"),
                          Text("Contact us",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,

                            ),),
                        ],),
                    ),
                    SizedBox(height: 8.0,),
                    MaterialButton(

                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                        },
                        color: Colors.purple[300],
                        child: Text("Continue to HomePage")
                    ),
                    SizedBox(height: 10,),
                    Container(
                        height: 300,
                        child: Image.asset('images/ty.jpg')),

                  ],
                ),
            ),
             );
          },
        ),
      ),);
  }
}
