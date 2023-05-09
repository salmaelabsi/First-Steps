/*      COMP205 PROJECT               *
 * Baby curriculum application        *
 * Code by Iman Nabil and Salma Elabsi*/
/*Code by Salma Elabsi*/
import 'package:first_steps/screens/base_screen.dart';
import 'package:first_steps/screens/calendar_screen.dart';
import 'package:first_steps/screens/development_screen.dart';
import 'package:first_steps/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/recommendation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstSteps',
      theme: ThemeData(),
      home: BaseScreen(),
    );
  }
}
