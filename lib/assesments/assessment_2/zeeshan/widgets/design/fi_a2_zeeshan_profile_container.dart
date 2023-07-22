import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanProfileContainer extends StatelessWidget {
  final String image;
  final bool isBorderEnable;
  final double height;
  const FIA2ZeeshanProfileContainer(
      {super.key,
      required this.image,
      this.isBorderEnable = false,
      required this.height});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);
    return Container(
      height: height,
      width: height,
      padding: EdgeInsets.all(screen.height * 0.003),
      margin: EdgeInsets.only(right: screen.width * 0.040),
      decoration: BoxDecoration(
        border: Border.all(
            color: isBorderEnable ? primaryColor : Colors.transparent,
            width: screen.height * 0.004),
        borderRadius: BorderRadius.circular(screen.height * 0.1),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: screen.height * 0.05,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$image'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
