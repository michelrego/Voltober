import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:volunteering/Login.dart';
import 'package:volunteering/Screens/Dashboard.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final _auth=FirebaseAuth.instance;

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
  String email;
  String password;
  bool showSpinner =false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall:showSpinner,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Hero(
                      tag: 'logo',
                      child: Container(
                        height:150.0,
                        child: Image.asset('images/Voltober.png'),
                      ),
                    ),

                    Container(
                      child: Padding(
                        padding:EdgeInsets.only(top:0.0,right: 20.0,left: 20.0,bottom: 5.0),
                        child:Form(
                          autovalidateMode: AutovalidateMode.always, key:formkey,
                          child:Column(
                            children: <Widget>[
                              TextFormField(
                                onChanged:(value){
                                  email=value;
                        },
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
                                onChanged:(value){
                                  password=value;
                                },
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

                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                color:kTitleColour,
                                onPressed: () {
                                  setState(() {
                                    showSpinner=true;
                                  });
                                 _signup(email, password);
                                  setState(() {
                                    showSpinner=false;
                                  });

                                },
                                child:Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal:100),
                                  alignment:Alignment.center,
                                  width:double.infinity,
                                  child:Text("Register"),
                                ),


                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed:(){
                                      _auth.signInWithEmailAndPassword(email: email, password: password);
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
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
      ),
    );
  }
  _signup(String email,String password)async {
    try {
       await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Dashboard()));
      }
    on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }

}