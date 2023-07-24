import 'package:flutter/material.dart';

import '../Constants/Constants,dart.dart';

class FiS2MAtifPicSetting extends StatelessWidget {
  final String image;
  final bool isBorderEnable;
  final double height;

  const FiS2MAtifPicSetting({
    Key? key,
    required this.image,
    this.isBorderEnable = false,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: height,
      width: height,
      padding: EdgeInsets.all(screenSize.height * 0.003),
      margin: EdgeInsets.only(right: screenSize.width * 0.040),
      decoration: BoxDecoration(
        border: Border.all(
          color: isBorderEnable ? primaryColor : Colors.transparent,
          width: screenSize.height * 0.004,
        ),
        borderRadius: BorderRadius.circular(screenSize.height * 0.1),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: screenSize.height * 0.05,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$image'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
