import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:async';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  int timer = 1;
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  Timer printTime;
  int count = -1;
  void setTimer(int val) {
    count = timer;
    //Duration tim = Duration(seconds: val);
    //sleep(tim);
    printTime = new Timer.periodic(new Duration(seconds: 1), (time) {
      if (count >= 0) {
        print(count);
        setState(() {
          counter(count);
        });
        count--;
      } else {
        printTime.cancel();
        Navigator.pushNamed(context, '/complete');
      }
    });
  }

  int counter(int value) {
    return value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timex'),
        backgroundColor: Colors.blueGrey[700],
      ),
      backgroundColor: Colors.blueGrey[400],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Set Timer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 53.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 90.0,
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 50.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Hr',
                          ),
                          onChanged: (value) {
                            hours = int.parse(value);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Container(
                        height: 60.0,
                        width: 50.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Min',
                          ),
                          onChanged: (value) {
                            minutes = int.parse(value);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Container(
                        height: 60.0,
                        width: 50.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Sec',
                          ),
                          onChanged: (value) {
                            seconds = int.parse(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 35.0,
                    width: 90.0,
                    child: Material(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 10.0,
                      child: MaterialButton(
                        textColor: Colors.white,
                        child: Text(
                          'Start',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {
                          timer = hours * 60 * 60 + minutes * 60 + seconds;
                          hours = 0;
                          minutes = 0;
                          seconds = 0;
                          if (timer < 1) {
                            Alert(
                                    context: context,
                                    title: "Invalid",
                                    desc: "Enter Value Greater than Zero")
                                .show();
                          } else {
                            setTimer(timer);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 30.0,
                  ),
                ),
                Flexible(
                  child: Text(
                    'Time Left : ${counter(count).toString()}',
                    style: TextStyle(
                      fontSize: 40.0,
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
//
//
//
//
//
//
//  void startTimer() {
//    int count = 0;
//    timr = new Timer.periodic(new Duration(seconds: 1), (time) {
//      if (count != timer) {
//        print(count);
//        count++;
//      } else {
//        timr.cancel();
//      }
//    });
//  }
