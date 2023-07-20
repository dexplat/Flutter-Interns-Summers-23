import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/svgs/menu.svg'),
        SvgPicture.asset('assets/svgs/notification.svg'),
      ],
    );
  }
}
