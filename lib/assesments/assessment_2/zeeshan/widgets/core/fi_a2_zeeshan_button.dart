import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;

  const FIA2ZeeshanButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.backgroundColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
          height: screen.height * 0.09,
          width: screen.width - (screen.width * 0.07),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(screen.height * 0.1),
            border: Border.all(color: borderColor, width: 1.5),
          ),
          child: child),
    );
  }
}
