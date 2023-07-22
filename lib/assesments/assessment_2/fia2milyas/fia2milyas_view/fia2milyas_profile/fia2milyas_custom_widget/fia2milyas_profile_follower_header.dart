import 'package:flutter/material.dart';

class FiA2MIlyasProfileFollowerHeader extends StatelessWidget {
  final String title;
  final String value;
  const FiA2MIlyasProfileFollowerHeader(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff706C6C),
          ),
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
