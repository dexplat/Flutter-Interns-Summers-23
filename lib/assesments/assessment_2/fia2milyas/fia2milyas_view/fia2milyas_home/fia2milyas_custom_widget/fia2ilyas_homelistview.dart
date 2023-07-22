import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_constant/fia2milyas_color.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_custom_widget/fia2milyas_core/fia2milyas_roundedpic.dart';

class FiA2MIlyasHomeListView extends StatelessWidget {
  const FiA2MIlyasHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            child: Stack(
              children: [
                FiA2MIlyasRoundedPic(
                  borderClr: AppColors.whiteclr,
                  customPic: Image.asset(
                    'assets/girl2.png',
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/addtop.png',
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
          FiA2MIlyasRoundedPic(
              borderClr: AppColors.primaryColor,
              customPic: Image.asset('assets/man1.png')),
          FiA2MIlyasRoundedPic(
              borderClr: AppColors.primaryColor,
              customPic: Image.asset('assets/girl2.png')),
          FiA2MIlyasRoundedPic(
              borderClr: AppColors.primaryColor,
              customPic: Image.asset('assets/man1.png')),
        ],
      ),
    );
  }
}
