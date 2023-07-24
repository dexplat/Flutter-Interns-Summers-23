import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BilalBottomBar extends StatelessWidget {
  BilalBottomBar({Key? key}) : super(key: key);

  @override
  final icons = [
    'assets/svgs/home.svg',
    'assets/svgs/Search.svg',
    'assets/svgs/add.svg',
    'assets/svgs/Profile.svg',
    'assets/svgs/notification_2.svg'
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 24, right: 21),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF575353),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < icons.length; i++)
              SvgPicture.asset(
                icons[i],
                width: 24,
                height: 27,
              )
          ],
        ),
      ),
    );
  }
}
