import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_1/constants/constants.dart';
import 'package:flutter_interns/sessions/session_1/screens/home/s1_home.dart';
import 'package:flutter_interns/sessions/session_1/screens/profile/s1_profile.dart';
import 'package:flutter_interns/sessions/session_1/screens/setttings/s1_settings.dart';

class S1Dashboard extends StatefulWidget {
  const S1Dashboard({super.key});

  @override
  State<S1Dashboard> createState() => _S1DashboardState();
}

class _S1DashboardState extends State<S1Dashboard> {
  /// 1 Screen
  /// --> multiple views/widgets (sections)
  List<Widget> views = [
    // home
    const S1Home(), // 0
    // profile
    const S1Profile(), // 1
    // settings
    const S1Settings() // 2
  ];

  // switch views(index) --> body
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: views[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Constants.primaryColor,
        onTap: (bottomBarItemIndex) {
          setState(() {
            currentIndex = bottomBarItemIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
