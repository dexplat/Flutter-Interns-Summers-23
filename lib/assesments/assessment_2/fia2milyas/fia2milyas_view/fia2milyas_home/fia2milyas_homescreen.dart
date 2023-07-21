import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_constant/fia2milyas_color.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_home/fia2milyas_custom_widget/fia2milyas_card.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_home/fia2milyas_custom_widget/fia2ilyas_homelistview.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'fia2milyas_custom_widget/fia2milyas_home_menu.dart';

class FiA2MIlyasHomeScreen extends StatelessWidget {
  const FiA2MIlyasHomeScreen({super.key});

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
              fixedColor: Colors.blue,
              items: [
                const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: AppColors.primaryColor,
                  ),
                ),
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
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/profilebottom.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: SvgPicture.asset(
                    'assets/svgs/notification_2.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
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
              FiA2MIlyasHomeMenu(),
              lineheight,
              FiA2MIlyasHomeListView(),
              lineheight,
              FiA2MIlyasCardHome(),
            ],
          ),
        ),
      ),
    );
  }
}
