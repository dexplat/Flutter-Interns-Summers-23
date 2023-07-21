import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiA2MIlyasProfileTopRow extends StatelessWidget {
  const FiA2MIlyasProfileTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/svgs/Go back.svg',
          width: 27,
          height: 19,
        ),
        const Text(
          'My Profile',
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        SvgPicture.asset('assets/svgs/Settings.svg', width: 27, height: 28),
      ],
    );
  }
}
