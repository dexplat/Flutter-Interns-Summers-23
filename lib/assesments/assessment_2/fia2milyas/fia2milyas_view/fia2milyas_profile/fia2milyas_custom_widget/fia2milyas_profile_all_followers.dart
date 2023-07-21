import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_profile/fia2milyas_custom_widget/fia2milyas_profile_follower.dart';

class FiA2MIlyasProfileAllFollower extends StatelessWidget {
  const FiA2MIlyasProfileAllFollower({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FiA2MIlyasProfileFollower(
          title: 'Photos',
          value: '315',
        ),
        FiA2MIlyasProfileFollower(
          title: 'Followers',
          value: '77.5k',
        ),
        FiA2MIlyasProfileFollower(
          title: 'Follows',
          value: '500',
        ),
      ],
    );
  }
}
