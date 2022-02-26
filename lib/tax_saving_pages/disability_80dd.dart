import 'dart:ui';

import 'package:flutter/material.dart';
class disability_80dd extends StatefulWidget {
  const disability_80dd({Key? key}) : super(key: key);

  @override
  _disability_80ddState createState() => _disability_80ddState();
}

class _disability_80ddState extends State<disability_80dd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disability 80DD'),
      ),
      body:Container(
        child :Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Which Type of Interest Income are Allowed as Deduction Under Section 80TTA",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(child: Text(""),),
                Container(
                  child: Text("* From a savings account with a bank.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                Container(
                  child: Text("* From a savings account with a co-operative society carrying on the business of banking.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                Container(
                  child: Text("* From a savings account with a post office.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                Container(child: Text(""),),
                Container(child: Text(""),),
                Container(child: Text(""),),
                Container(child: Text(""),),
                Container(
                  child: Text("Interest Income Not Allowed as Deduction Under Section 80TTA",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(child: Text(""),),
                Container(
                  child: Text("* Interest from fixed deposits.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                Container(
                  child: Text("* Interest from recurring deposits.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                Container(
                  child: Text("* Any other time deposits.",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
