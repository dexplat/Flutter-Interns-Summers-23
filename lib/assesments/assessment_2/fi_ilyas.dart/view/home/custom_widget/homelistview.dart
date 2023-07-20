import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/const/color.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/custom_widget/core/roundedpic.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 66,
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 70,
            child: Stack(
              children: [
                RoundedPic(
                    borderclr: AppColors.whiteclr,
                    custompic: Image.asset(
                      'assets/girl2.png',
                    )),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/addtop.png',
                    height: 30,
                    width: 30,
                    //color: AppColors.whiteclr.withOpacity(1),
                  ),
                )
              ],
            ),
          ),
          RoundedPic(
              borderclr: AppColors.primaryColor,
              custompic: Image.asset('assets/man1.png')),
          RoundedPic(
              borderclr: AppColors.primaryColor,
              custompic: Image.asset('assets/girl2.png')),
          RoundedPic(
              borderclr: AppColors.primaryColor,
              custompic: Image.asset('assets/man1.png')),
        ],
      ),
    );
  }
}
