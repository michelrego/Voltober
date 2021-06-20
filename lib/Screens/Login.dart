import 'package:flutter/material.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          child: Text("Login",
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 8.0),
              child: Text("Welcome Back!",
                style:kDashTitleTextStyle,),
            ),
            Expanded(
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
                         ),
                          fillColor: Colors.purple,
                          labelText: "Email",),
                        validator:MultiValidator(
                          [
                            RequiredValidator(errorText: "Required*"),
                            EmailValidator(errorText: "Not A Valid Email"),
                          ],
                        ),),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration:InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ), labelText: "Password"),
                        validator: validatepass,
                      ),
                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password?',
                        style:kPurple),
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: Colors.purple[300],
                        onPressed: (){
                          Navigator.pushNamed(context,'/first');
                        },
                        child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal:100),
                          alignment:Alignment.center,
                          width:double.infinity,
                          child:Text("LOGIN"),
                        ),


                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(onPressed:(){
                            Navigator.pushNamed(context,'/second');
                          },
                            child: Text("Don't have an account?"" Sign up",
                              style: kPurple,
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


      ),
    );
  }
}








