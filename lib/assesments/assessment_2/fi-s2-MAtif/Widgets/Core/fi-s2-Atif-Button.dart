import 'package:flutter/material.dart';

import '../../Constants/Constants,dart.dart';

class FiS2MAtifLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;

  const FiS2MAtifLoginButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: screen.height * 0.09,
        width: screen.width - (screen.width * 0.07),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(screen.height * 0.1),
          border: Border.all(color: borderColor, width: 1.5),
        ),
        child: child,
      ),
    );
  }
}
