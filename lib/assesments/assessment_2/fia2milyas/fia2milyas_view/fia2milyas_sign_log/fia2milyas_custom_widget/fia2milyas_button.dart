import 'package:flutter/material.dart';

class FiA2MIlyasMyAppButton extends StatelessWidget {
  final String buttontxt;
  final Color concolor;
  final Color txtclr;
  const FiA2MIlyasMyAppButton(
      {super.key,
      required this.buttontxt,
      required this.concolor,
      required this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        width: 320,
        decoration: BoxDecoration(
          color: concolor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xff9E9898),
          ),
        ),
        child: Center(
          child: Text(
            buttontxt,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: txtclr, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
