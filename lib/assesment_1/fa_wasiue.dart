import 'package:flutter/material.dart';

class FIWasiue extends StatelessWidget {
  const FIWasiue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Wasiue"),
      ),
      body: const Center(
        child: Text("Hello! I am Wasiue"),
      ),
    );
  }
}
