import 'dart:ui';

import 'package:flutter/material.dart';
class Savings extends StatefulWidget {
  const Savings({Key? key}) : super(key: key);

  @override
  _SavingsState createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Savings 80C'),
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
    );;
  }
}
