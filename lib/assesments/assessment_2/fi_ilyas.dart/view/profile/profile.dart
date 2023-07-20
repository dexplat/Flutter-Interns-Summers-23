import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/const/color.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/custom_widget/core/roundedpic.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/profile/custom_widget/profile_photo_vedio.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/profile/custom_widget/profile_top_row.dart';
import 'custom_widget/profile_all_followers.dart';
import 'custom_widget/profile_all_post_pic.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              // Top Row=> profile back button,image, and setting lies in below file
              const ProfileTopRow(),

              const SizedBox(
                height: 40,
              ),
              RoundedPic(
                borderclr: AppColors.whiteclr,
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

//all photos followers and follows lies on below file
              const ProfileAllFollower(),

              const SizedBox(
                height: 40,
              ),
              // photo vedio tagged and more icon row are below
              const PhotoVedioRow(),
              const SizedBox(
                height: 15,
              ),

              //all posted picture are in this files
              const AllPostPicture(),
            ],
          ),
        ),
      ),
    );
  }
}
