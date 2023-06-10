import 'package:assignment_9/const/all_colors.dart';
import 'package:assignment_9/pages/backgroundcolorpage.dart';
import 'package:assignment_9/pages/homepage.dart';
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
  home: Homepage(),
    );
  }
}

