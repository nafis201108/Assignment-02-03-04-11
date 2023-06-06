//Take one text field in your UI. And take a Text Widget for show your CityName.
// Take a button of action.
// If user click on button Text widget will update with the value that you
// give in your textfield. Use Getx State management

import 'package:assignment_11/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Homescreen(),
    );
  }
}

