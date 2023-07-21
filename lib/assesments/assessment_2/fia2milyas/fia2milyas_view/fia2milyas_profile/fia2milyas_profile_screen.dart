import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_constant/fia2milyas_color.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_custom_widget/fia2milyas_core/fia2milyas_roundedpic.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_profile/fia2milyas_custom_widget/fia2milyas_profile_photo_vedio.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_profile/fia2milyas_custom_widget/fia2milyas_profile_top_row.dart';
import 'fia2milyas_custom_widget/fia2milyas_profile_all_followers.dart';
import 'fia2milyas_custom_widget/fia2milyas_profile_all_post_pic.dart';

class FiA2MIlyasProfileScreen extends StatelessWidget {
  const FiA2MIlyasProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 20,
          ),
          child: Column(
            children: [
              const FiA2MIlyasProfileTopRow(),
              const SizedBox(
                height: 40,
              ),
              FiA2MIlyasRoundedPic(
                borderClr: AppColors.whiteclr,
                custompic: Image.asset(
                  'assets/girl1.png',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Kathrina Kaif',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '@katrina_kaif',
              ),
              const SizedBox(
                height: 40,
              ),
              const FiA2MIlyasProfileAllFollower(),
              const SizedBox(
                height: 40,
              ),
              const FiA2MIlyasPhotoVedioRow(),
              const SizedBox(
                height: 15,
              ),
              const FiA2MIlyasAllPostPicture(),
            ],
          ),
        ),
      ),
    );
  }
}
