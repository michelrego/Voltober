import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Signup extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()) {
      print("validate");
    }
    else{
      print("no");
    }
  }

  String validatepass(value){
    if(value.isEmpty) {
      return "Required";
    }else if(value.length<6) {
      return "Password should be atleast 6 Characters ";
    } else if(value.length>15){
      return "Password shoul not be below 15 characters";
    } else{
      return null;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text("Sign in",
            style: kDashTitleTextStyle,


          ),
        ),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.all(25),
                  child:Center(
                    child:Form(
                      autovalidateMode: AutovalidateMode.always, key:formkey,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration:InputDecoration(
                              border:OutlineInputBorder(),
                              labelText: "Email",),
                            validator:MultiValidator(
                              [
                                RequiredValidator(errorText: "Required*"),
                                EmailValidator(errorText: "Not A Valid Email"),
                              ],

                            ),

                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding:EdgeInsets.only(
                              bottom:30,
                            ),
                            child: TextFormField(
                              decoration:InputDecoration(
                                  border:OutlineInputBorder(), labelText: "Password"),
                              validator: validatepass,
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(
                              bottom:30,
                            ),
                            child: TextFormField(
                              decoration:InputDecoration(
                                  border:OutlineInputBorder(), labelText: "Confirm Password"),
                              validator: validatepass,
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(
                              bottom:0,
                            ),
                            child:MaterialButton(
                              onPressed: (){
                                Navigator.pushNamed(context,'/third');
                              },
                              color: Colors.blueGrey,
                              child:Text('Sign in',
                                ),

                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              MaterialButton(onPressed:(){
                                Navigator.pushNamed(context,'/first');
                              },
                                child: Text("Already have an account?"" Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,

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
              ],),
            ),

          ],
        ),

      ),
    );
  }
}