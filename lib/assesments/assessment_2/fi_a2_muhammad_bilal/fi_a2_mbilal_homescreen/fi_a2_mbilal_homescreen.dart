import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_a2_muhammad_bilal/fi_a2_mbilal_homescreen/widgets/fi_a2_mbilal_bottombar.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_a2_muhammad_bilal/fi_a2_mbilal_homescreen/widgets/fi_a2_mbilal_homecontainer.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class BilalHomeScreen extends StatelessWidget {
  BilalHomeScreen({Key? key}) : super(key: key);

  List<String> pictures = [
    'assets/man1.png',
    'assets/girl2.png',
    'assets/man1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 66, left: 28, right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/svgs/menu.svg',
                  width: 29,
                  height: 29,
                ),
                SvgPicture.asset(
                  'assets/svgs/notification.svg',
                  width: 29,
                  height: 29,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: const AssetImage(
                    'assets/girl1.png',
                  ),
                  child: Image.asset(
                    'assets/fi_a2_mbilal_assets/Add.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                for (int i = 0; i < pictures.length; i++)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 3,
                        color: const Color(0xFFFA9884),
                      ),
                    ),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image.asset(
                          pictures[i],
                          width: 55,
                          height: 55,
                        )),
                  ),
              ],
            ),
          ),
          const BilalHomeContainer(),
          BilalBottomBar(),
        ],
      ),
    );
  }
}
