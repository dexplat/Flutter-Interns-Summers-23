import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_1/s1_home.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_a2_abdullah/fi_a2_abdullah_signup.dart';
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Summer Internship \'23',
      home: S1Home(),
    );
  }
}
