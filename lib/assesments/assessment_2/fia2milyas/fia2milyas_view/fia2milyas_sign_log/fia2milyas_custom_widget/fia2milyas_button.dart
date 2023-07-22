import 'package:flutter/material.dart';

class FiA2MIlyasMyAppButton extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final Color textColor;
  const FiA2MIlyasMyAppButton(
      {super.key,
      required this.buttonText,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        width: 320,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xff9E9898),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
