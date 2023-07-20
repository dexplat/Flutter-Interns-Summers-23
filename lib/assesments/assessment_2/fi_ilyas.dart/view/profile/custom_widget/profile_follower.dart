import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileFollower extends StatelessWidget {
  String title;
  String value;
  ProfileFollower({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Color(0xff706C6C)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
