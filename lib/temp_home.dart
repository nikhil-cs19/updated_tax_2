import 'package:flutter/material.dart';
import './tax_saving_pages/Section_main.dart';
class temp_home extends StatefulWidget {
  const temp_home({Key? key}) : super(key: key);

  @override
  _temp_homeState createState() => _temp_homeState();
}

class _temp_homeState extends State<temp_home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Container(
            child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => SavingMain()),
                }
            ),
          ),

      ),
    );
  }
}
