import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am Info Bar'),
      ),
      body: const Center(child: Text('I am Body of Infbar Widget')),
    );
  }
}
