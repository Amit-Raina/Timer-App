import 'package:flutter/material.dart';

class Complete extends StatefulWidget {
  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 260.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Time\'s Up',
                  style: TextStyle(fontSize: 60.0),
                ),
                SizedBox(
                  height: 250.0,
                ),
                Container(
                  child: Material(
                    elevation: 10.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    child: MaterialButton(
                      textColor: Colors.white,
                      child: Text(
                        'Back',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
