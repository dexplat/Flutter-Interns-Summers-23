import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_8/providers/app_provider.dart';
import 'package:flutter_interns/sessions/session_8/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = AppState.s(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(appState.counter.toString()),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                appState.increment();
              },
              child: const Text('Add'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                appState.decrement();
              },
              child: const Text('Subtract'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SecondScreen(),
                  ),
                );
              },
              child: const Text('Go to Second Screen'),
            )
          ],
        ),
      ),
    );
  }
}
