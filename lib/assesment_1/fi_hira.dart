import 'package:flutter/material.dart';

class FIHira extends StatelessWidget {
  const FIHira({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hira"),
      ),
      body: const Center(
        child: Text("Hi! I am Hira"),
      ),
    );
  }
}
