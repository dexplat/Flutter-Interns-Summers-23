import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/const/color.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/home/custom_widget/card.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/home/custom_widget/homelistview.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_widget/home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const lineheight = SizedBox(
      height: 20,
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              //container borderRadius did not worked
              // borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, -1),
                  blurRadius: 1.0,
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 8.0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xff423D3D),

              // backgroundColor: Colors.red,
              fixedColor: Colors.blue,
              items: [
                const BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: AppColors.primaryColor,
                    )),
                const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                    label: '',
                    icon: Image.asset(
                      'assets/addtop.png',
                      color: Colors.grey,
                      height: 30,
                      width: 30,
                    )),
                BottomNavigationBarItem(
                    label: '',
                    icon: Image.asset(
                      'assets/profilebottom.png',
                      height: 30,
                      width: 30,
                    )),
                BottomNavigationBarItem(
                    label: '',
                    icon: SvgPicture.asset(
                      'assets/svgs/notification_2.svg',
                      height: 30,
                      width: 30,
                    ))
              ],
            ),
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 28),
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
