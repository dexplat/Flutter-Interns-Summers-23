import 'package:flutter/material.dart';

class FIRohan extends StatelessWidget {
  const FIRohan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Rohan khan",
          style: TextStyle(fontSize: 30),
        )),
      ),
      body: const Center(
        child: Text(
          "Hello! I am Rohan Khan",
          style: TextStyle(
              fontSize: 30, color: Colors.blue, backgroundColor: Colors.black),
        ),
      ),
    );
  }
}
