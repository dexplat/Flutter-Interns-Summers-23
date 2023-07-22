import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_2/screens/add_post/s2_add_post.dart';
import 'package:flutter_interns/sessions/session_2/screens/home/s2_home.dart';
import 'package:flutter_interns/sessions/session_2/screens/notification/s2_notification.dart';
import 'package:flutter_interns/sessions/session_2/screens/profile/s2_profile.dart';
import 'package:flutter_interns/sessions/session_2/screens/search/s2_search.dart';

class S2DashboardScreen extends StatefulWidget {
  const S2DashboardScreen({super.key});

  @override
  State<S2DashboardScreen> createState() => _S2DashboardScreenState();
}

class _S2DashboardScreenState extends State<S2DashboardScreen> {
  int currentIndex = 0;

  /// screens
  List<Widget> views = [
    const S2HomeScreen(),
    const S2SearchScreen(),
    const S2AddPost(),
    const S2ProfileScreen(),
    const S2NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: views[currentIndex],
      ),
    );
  }
}
