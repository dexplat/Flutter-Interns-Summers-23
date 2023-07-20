import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final bool border;
  final String image;
  const Avatar({super.key, required this.border,  required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: border ? const Color(0xAAFA9884): Colors.white,
      radius: 40,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 35,
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: border ? 33:40,
          child: border ? null: const Icon(Icons.add_box, color: Colors.white, size: 35,)
          // SvgPicture.asset("assets/svgs/add.svg", colorFilter: const ColorFilter.mode(Color(0x44FFFFFF), BlendMode.xor)),
        ),
      ),
    );
  }
}
