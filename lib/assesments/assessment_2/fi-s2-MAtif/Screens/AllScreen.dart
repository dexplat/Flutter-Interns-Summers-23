import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
  final String ttext;
  const AllScreen({Key? key, required this.ttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            ttext,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: const Color.fromRGBO(112, 108, 108, 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
