import 'package:flutter/material.dart';

class StatsColumn extends StatelessWidget {
  final String name;
  final String number;

  const StatsColumn({super.key, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Color(0xFF706C6C),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          number,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
