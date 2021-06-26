import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print("validate");
    }
    else {
      print("no");
    }
  }

  String validatepass(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 Characters ";
    } else if (value.length > 15) {
      return "Password shoul not be below 15 characters";
    } else {
      return null;
    }
  }

  bool _secureText = true;

  bool remember =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SIGN-IN",
          style: kDashTitleTextStyle,
        ),
        centerTitle: true,
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 8.0),
              child: Text("Welcome To Voltober!",
                style:kDashTitleTextStyle,),
            ),
            Container(
              child: Padding(
                padding:EdgeInsets.all(25),
                child:Form(
                  autovalidateMode: AutovalidateMode.always, key:formkey,
                  child:Column(
                    children: <Widget>[
                      TextFormField(
                        decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color:Colors.blue),
                          ),
                          fillColor: Colors.purple,
                          labelText: "Email",
                          suffixIcon: Icon(Icons.mail_outlined),
                        ),

                        validator:MultiValidator(
                          [
                            RequiredValidator(errorText: "Required*"),
                            EmailValidator(errorText: "Not A Valid Email"),
                          ],
                        ),),
                      SizedBox(height: 20,),
                      TextFormField(
                        obscureText: true,
                        decoration:InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _secureText ? Icons.remove_red_eye : Icons.security),
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                                },
                            )),
                        validator: validatepass,
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        obscureText: true,
                        decoration:InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            labelText: "Confirm Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _secureText ? Icons.remove_red_eye : Icons.security),
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                            )),
                        validator: validatepass,
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color:kTitleColour,
                        onPressed: (){
                          Navigator.pushNamed(context,'/third');
                        },
                        child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal:100),
                          alignment:Alignment.center,
                          width:double.infinity,
                          child:Text("SIGN-IN"),
                        ),


                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed:(){
                              Navigator.pushNamed(context,'/first');
                            },
                            child: Center(
                              child: Text("Already account Exists?  Login",
                                style: kPurple,
                              ),
                            ),
                          ),
                        ],
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
    );
  }
}
