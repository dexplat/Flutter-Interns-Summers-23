import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FIAqeel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pull Request"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[100],
                child: const Icon(
                  CupertinoIcons.person_fill,
                  size: 70,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Hi 👋",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
