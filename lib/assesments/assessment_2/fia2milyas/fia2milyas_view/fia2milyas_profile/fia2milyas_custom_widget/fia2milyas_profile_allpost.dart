import 'package:flutter/material.dart';

class FiA2MIlyasProfileAllPost extends StatelessWidget {
  final String url;
  const FiA2MIlyasProfileAllPost({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          url,
        ),
      ),
    );
  }
}
