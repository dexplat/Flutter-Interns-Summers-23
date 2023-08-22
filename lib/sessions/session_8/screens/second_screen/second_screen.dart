import 'package:flutter/material.dart';
part 'static/_data.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          _Data.notTabs[0],
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
