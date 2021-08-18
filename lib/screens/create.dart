import 'package:flutter/material.dart';
import 'package:volunteering/Screens/output_page.dart';
import 'package:volunteering/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  String text;
  User user;
  String valueChoose;
  List listItem = [
    'Stray Care',
    'Road Cleaning',
    'Beach Cleaning',
    'OldAge',
    'Orphanage',
    'Covid Help',
  ];

  void validate() {
    if (formkey.currentState.validate()) {
      print("validate");
    } else {
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
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: kTitleColour,
        leading: IconButton(
          onPressed: () => Navigator.popAndPushNamed(context, '/'),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 8.0),
                    child: Text(
                      "Create your event!",
                      style: kDashTitleTextStyle,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        key: formkey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Name",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Email ID",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                  EmailValidator(
                                      errorText: "Not A Valid Email"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Phone Num",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Address",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(18)),
                              child: DropdownButton(
                                hint: Text("Select Category:"),
                                dropdownColor: Colors.white,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                isExpanded: true,
                                value: valueChoose,
                                onChanged: (newvalue) {
                                  setState(() {
                                    valueChoose = newvalue;
                                  });
                                },
                                items: listItem.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Num of volunteers needed",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Pick a Date",
                              ),




                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                fillColor: Colors.purple,
                                labelText: "Pick a time",
                              ),
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required*"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              color: kTitleColour,
                              onPressed: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Output()));
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 80),
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text("Create Event"),
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
    );
  }
}