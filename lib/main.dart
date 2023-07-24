
import 'package:flutter/material.dart';

import 'assesments/assessment_2/fi-s2-MAtif/Screens/LoginScreen.dart';
import 'assesments/assessment_2/fi-s2-MAtif/Screens/fi-s2-Atif-Screen3/Screen3.dart';


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
      home: FiA2AtifLogin(),
    );
  }
}
