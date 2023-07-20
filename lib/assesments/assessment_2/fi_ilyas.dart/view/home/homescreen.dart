import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/home/card.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/home/homelistview.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const lineheight = SizedBox(
      height: 20,
    );
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 66, horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeMenu(),
              lineheight,
              HomeListView(),
              lineheight,
              CardHome(),
            ],
          ),
        ),
      ),
    );
  }
}
