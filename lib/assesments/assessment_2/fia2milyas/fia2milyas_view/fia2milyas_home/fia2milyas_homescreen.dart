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
      height: 25,
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, -1),
                blurRadius: 1.0,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 8.0,
            backgroundColor: const Color(0xff423D3D),
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
              const BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(
                  'assets/svgs/notification_2.svg',
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 55, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
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
