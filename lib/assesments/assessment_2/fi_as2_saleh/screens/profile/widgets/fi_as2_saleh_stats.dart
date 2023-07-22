import 'package:flutter/material.dart';

class StatsColumn extends StatelessWidget {
  final String name;
  final String statistic;

  const StatsColumn({super.key, required this.name, required this.statistic});

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
          statistic,
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
