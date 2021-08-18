import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:volunteering/Screens/output_page.dart';

class Dailog_Box extends StatefulWidget {

  @override
  _Dailog_BoxState createState() => _Dailog_BoxState();
}

class _Dailog_BoxState extends State<Dailog_Box> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;


  String text;
  User user;


  void initState() {
    user = _auth.currentUser;
    super.initState();
  }

 // void messageStream()async {
  //  await for (var snapshots in _firestore.collection('apply').snapshots()) {
   //   for(var message in snapshots.docs){
     //   print(message.data);
   //   }

   // }
  //}


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: TextFormField(
              onChanged:(value){
          text=value;
  },
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color:Colors.blue),
              ),
              fillColor: Colors.purple,
              labelText: "Name of the Event",
              suffixIcon: Icon(Icons.event_available_rounded),
            ),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
            onPressed: (){

              _firestore.collection('apply').add({
                'eventname': text,
                'sender':user.email,

              }, );
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Output()));
            },
              child: const Text('OK'),
            ),
          ],
        );

  }
}
