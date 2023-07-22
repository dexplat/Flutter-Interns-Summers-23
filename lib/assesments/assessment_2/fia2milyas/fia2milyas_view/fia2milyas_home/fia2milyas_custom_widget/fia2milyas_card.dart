import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_constant/fia2milyas_color.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_profile/fia2milyas_profile_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../fia2milyas_custom_widget/fia2milyas_core/fia2milyas_roundedpic.dart';

class FiA2MIlyasCardHome extends StatelessWidget {
  const FiA2MIlyasCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const FiA2MIlyasProfileScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 430,
        width: 340,
        decoration: BoxDecoration(
          color: AppColors.whiteclr,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: FiA2MIlyasRoundedPic(
                borderClr: AppColors.primaryColor,
                customPic: Image.asset('assets/girl1.png'),
              ),
              title: const Text(
                'Jamimma Khan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('@jami_khan'),
              trailing: Image.asset(
                'assets/More.png',
                width: 25,
                height: 6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                'https://images.unsplash.com/photo-1613479267503-eafa8b242987?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJlYXV0eXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                height: 212,
                width: 295,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/Like.svg',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '573',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/Coment.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '30',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/Share.svg',
                    height: 20,
                    width: 20,
                  ),
                  const Spacer(),
                  const Text(
                    '35 min ago',
                    style: TextStyle(fontSize: 12, color: Color(0xff9E9898)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Down the road',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
