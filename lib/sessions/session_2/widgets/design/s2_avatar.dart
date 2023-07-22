import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_2/theme/s2_colors.dart';

class S2Avatar extends StatelessWidget {
  final String imagePath;
  final bool showBorder;
  final bool hasAddButton;
  const S2Avatar({
    super.key,
    required this.imagePath,
    this.showBorder = true,
    this.hasAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40.0,
      backgroundColor: showBorder ? AppColors.primaryColor : Colors.transparent,
      child: CircleAvatar(
        radius: 38.0,
        backgroundColor: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 36.0,
              backgroundImage: AssetImage(imagePath),
            ),
            if (hasAddButton)
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
