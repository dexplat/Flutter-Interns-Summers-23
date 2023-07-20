import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileAllPost extends StatelessWidget {
  ProfileAllPost({super.key, required this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(url),
      ),
    );
  }
}
