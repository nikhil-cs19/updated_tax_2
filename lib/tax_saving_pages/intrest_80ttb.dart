import 'dart:ui';

import 'package:flutter/material.dart';
class intrest_80ttb extends StatefulWidget {
  const intrest_80ttb({Key? key}) : super(key: key);

  @override
  _intrest_80ttbState createState() => _intrest_80ttbState();
}

class _intrest_80ttbState extends State<intrest_80ttb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrest 80TTB'),
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
