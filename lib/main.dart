import 'package:flutter/material.dart';
import 'package:flutter_interns/assesment_1/fi_hunaina.dart';

import 'assesment_1/fi_uzair.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FIUzair(),
    );
  }
}
