import 'package:flutter/material.dart';

class FiA2MIlyasRoundedPic extends StatelessWidget {
  final Color borderClr;
  final Widget customPic;
  const FiA2MIlyasRoundedPic(
      {super.key, required this.borderClr, required this.customPic});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 85,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderClr,
            width: 3,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: customPic,
      ),
    );
  }
}
