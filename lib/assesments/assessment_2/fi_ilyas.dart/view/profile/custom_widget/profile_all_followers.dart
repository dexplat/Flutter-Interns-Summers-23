import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/profile/custom_widget/profile_follower.dart';

class ProfileAllFollower extends StatelessWidget {
  const ProfileAllFollower({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileFollower(
          title: 'Photos',
          value: '315',
        ),
        ProfileFollower(
          title: 'Followers',
          value: '77.5k',
        ),
        ProfileFollower(
          title: 'Follows',
          value: '500',
        ),
      ],
    );
  }
}
