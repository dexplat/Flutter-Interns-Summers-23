import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAppButton extends StatelessWidget {
  String buttontxt;
  Color concolor;
  Color txtclr;
  MyAppButton(
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
            border: Border.all(color: const Color(0xff9E9898))),
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

// top: 622px
// left: 24px
// border-radius: 50px
  }
}
