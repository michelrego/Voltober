import 'package:flutter/material.dart';
import 'package:volunteering/Screens/Dashboard.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';



class reset extends StatefulWidget {
  @override
  _resetState createState() => _resetState();
}

class _resetState extends State<reset> {
  final _auth =FirebaseAuth.instance;
  String email;
  bool showSpinner=false;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()) {
      print("validate");
    }
    else{
      print("no");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Reset password",
          style: kDashTitleTextStyle,
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: kTitleColour,

        leading: IconButton(
          onPressed: ()
          => Navigator.popAndPushNamed(context, '/'),
          icon:Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
        ),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Form(
                          autovalidateMode: AutovalidateMode.always, key: formkey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                onChanged:(value){
                                  email=value;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  fillColor: Colors.purple,
                                  labelText: "Email",
                                  suffixIcon: Icon(Icons.mail_outlined),
                                ),

                                validator: MultiValidator(
                                  [
                                    RequiredValidator(errorText: "Required*"),
                                    EmailValidator(errorText: "Not A Valid Email"),
                                  ],
                                ),),
                              SizedBox(height: 20,),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                color: kTitleColour,
                                onPressed:()  {
                                  _auth.sendPasswordResetEmail(email: email);
                                  Navigator.pushNamed(context, '/');



                                 },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 100),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text("Reset"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}








