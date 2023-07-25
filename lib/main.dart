import 'package:flutter/material.dart';
//import 'package:flutter_interns/sessions/session_2/screens/dashboard/s2_dashboard.dart';

import 'assesments/assessment_2/Uzair/fi_a2_uzair_home_screen.dart';
import 'assesments/assessment_2/Uzair/fi_a2_uzair_login_screen.dart';
import 'assesments/assessment_2/Uzair/fi_a2_uzair_profile_screen.dart';

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
      //home: FiA2UzairLoginScreen(),
      //home: FiA2UzairHomeScreen(),
      home: FiA2UzairProfileScreen(),
    );
  }
}
