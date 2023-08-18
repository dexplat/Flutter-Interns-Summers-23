import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_8/providers/app_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          appProvider.counter.toString(),
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
