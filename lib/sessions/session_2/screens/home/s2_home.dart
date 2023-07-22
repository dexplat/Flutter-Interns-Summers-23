import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_2/theme/s2_spaces.dart';
import 'package:flutter_interns/sessions/session_2/theme/s2_typography.dart';
import 'package:flutter_interns/sessions/session_2/utils/assets.dart';
import 'package:flutter_interns/sessions/session_2/widgets/design/s2_avatar.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widgets/_header.dart';
part 'widgets/_post_card.dart';

class S2HomeScreen extends StatelessWidget {
  const S2HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final storyImages = [
      StaticAssets.man1,
      StaticAssets.girl2,
      StaticAssets.man2,
    ];

    final posts = [
      {
        'user': StaticAssets.man1,
        'card': StaticAssets.image1,
      },
      {
        'user': StaticAssets.girl1,
        'card': StaticAssets.image3,
      },
      {
        'user': StaticAssets.girl2,
        'card': StaticAssets.image2,
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _Header(),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const S2Avatar(
                    imagePath: StaticAssets.girl1,
                    showBorder: false,
                    hasAddButton: true,
                  ),
                  ...storyImages.map(
                    (story) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: S2Avatar(
                        imagePath: story,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...posts.map(
              (e) => _PostCard(
                postImagePath: e['card'] as String,
                userImagePath: e['user'] as String,
              ),
            )
          ],
        ),
      ),
    );
  }
}
