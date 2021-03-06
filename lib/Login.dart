import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:volunteering/Screens/Dashboard.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth =FirebaseAuth.instance;
  String email;
  String password;
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
  bool _secureText = true;
  bool remember =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("LOGIN",
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
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
                        child: Text("Welcome Back!",
                          style: kDashTitleTextStyle,),
                      ),
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
                                TextFormField(
                                  onChanged:(value){
                                    password=value;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      labelText: "Password",
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                            _secureText ? Icons.remove_red_eye : Icons
                                                .security),
                                        onPressed: () {
                                          setState(() {
                                            _secureText = !_secureText;
                                          });
                                        },
                                      )),
                                  validator: validatepass,
                                ),
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        activeColor: Colors.purple[300],
                                        value: remember,
                                        onChanged: (value) {
                                          setState(() {
                                            remember = value;
                                          });
                                        }),
                                    Text("Remember me",
                                      style: kSmall,),
                                    SizedBox(width: 50),
                                    TextButton(
                                      child: Text("Forgot Password?",
                                        style: kSmall,),
                                      onPressed:()=>Navigator.pushNamed(context,'/el'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  color: kTitleColour,
                                  onPressed:() async {
                                    setState(() {
                                      showSpinner=true;});
                                    try{
                                      final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                                    if (user!=null ){
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dashboard()));
                                    }}
                                    on FirebaseAuthException catch(error){
                                      Fluttertoast.showToast(msg: error.message,gravity: ToastGravity.TOP);
                                    }
                                    setState(() {
                                      showSpinner=false;

                                    });

                },child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 100),
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    child: Text("LOGIN"),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/second');
                                      },
                                      child: Center(
                                        child: Text("Dont have an Account?  Sign In",
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
}








