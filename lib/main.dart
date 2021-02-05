import 'package:flutter/material.dart';
import 'completed_screen.dart';
import 'launched_screen.dart';
import 'dart:async';

void main() => runApp(Timex());

class Timex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/launch',
      routes: {
        '/launch': (context) => Launch(),
        '/complete': (context) => Complete(),
      },
    );
  }
}
