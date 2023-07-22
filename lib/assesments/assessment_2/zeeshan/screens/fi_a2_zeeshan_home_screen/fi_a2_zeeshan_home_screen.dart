import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_add_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_chat_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_notification_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_profile_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_search_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_constants.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_nav_functions.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/widgets/design/fi_a2_zeeshan_profile_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widgets/_fi_a2_zeeshan_post_card.dart';

class FIA2ZeeshanHomeScreen extends StatelessWidget {
  const FIA2ZeeshanHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);

    final List<String> bottomNavBarIcons = [
      homeSvg,
      searchSvg,
      addPostSvg,
      notificationSvg,
      profileSvg
    ];

    final List<String> peopleImages = [
      'girl1.png',
      'man1.png',
      'girl2.png',
      'man1.png'
    ];

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen.width * 0.02, vertical: screen.height * 0.02),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgIconButton(assetSVG: menuSvg, onPressed: () {}),
                    SvgIconButton(
                      assetSVG: chatSvg,
                      onPressed: () => navigateToNextScreen(
                        context,
                        const FIA2ZeeshanChatScreen(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screen.height * 0.02),
              Expanded(
                flex: 14,
                child: Column(
                  children: [
                    SizedBox(
                      height: screen.height * 0.105,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: peopleImages
                              .asMap()
                              .entries
                              .map(
                                (image) => FIA2ZeeshanProfileContainer(
                                    image: image.value,
                                    isBorderEnable:
                                        peopleImages.first == image.value
                                            ? false
                                            : true,
                                    height: screen.height * 0.105),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: screen.height * 0.02),
                    const _FIA2ZeeshanPostCard(
                        image: 'man1.png',
                        name: 'Anton Demeron',
                        username: '@anton_demeron')
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 2,
                    child: Container(
                      height: screen.height * 0.1,
                      decoration: BoxDecoration(
                        color: navBarColor,
                        borderRadius:
                            BorderRadius.circular(screen.height * 0.025),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: bottomNavBarIcons
                            .asMap()
                            .entries
                            .map(
                              (navIcon) => SvgIconButton(
                                assetSVG: navIcon.value,
                                onPressed: () {
                                  switch (navIcon.value) {
                                    case searchSvg:
                                      {
                                        navigateToNextScreen(
                                          context,
                                          const FIA2ZeeshanSearchScreen(),
                                        );
                                      }
                                      break;

                                    case addPostSvg:
                                      {
                                        navigateToNextScreen(
                                          context,
                                          const FIA2ZeeshanAddScreen(),
                                        );
                                      }
                                      break;

                                    case notificationSvg:
                                      {
                                        navigateToNextScreen(
                                          context,
                                          const FIA2ZeeshanNotificationScreen(),
                                        );
                                      }
                                      break;

                                    case profileSvg:
                                      {
                                        navigateToNextScreen(
                                          context,
                                          const FIA2ZeeshanProfileScreen(),
                                        );
                                      }
                                      break;

                                    default:
                                      {}
                                      break;
                                  }
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SvgIconButton extends StatelessWidget {
  final String assetSVG;
  final VoidCallback onPressed;

  const SvgIconButton(
      {super.key, required this.assetSVG, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);

    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(assetSVG,
          height: screen.height * 0.035, width: screen.height * 0.035),
    );
  }
}
