import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-s2-MAtif/Screens/AllScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/fi-s2-Atif-Navigation.dart';
import '../PicsSetting/fi-s2-MAtif-picSetting.dart';
import 'fi-s2-Atif-screen2Card.dart';

class FiS2MAtifScreen2Main extends StatelessWidget {
  const FiS2MAtifScreen2Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.02,
            vertical: screenSize.height * 0.02,
          ),
          child: Column(
            children: [
              _buildTopAppBar(context),
              SizedBox(height: screenSize.height * 0.02),
              _buildContentSection(screenSize),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildBottomNavigationBar(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSvgIconButton(
            context: context,
            assetSVG: 'assets/svgs/menu.svg',
            onPressed: () {}),
        _buildSvgIconButton(
          context: context,
          assetSVG: chatSvg,
          onPressed: () => navigateToNextScreen(
            context,
            const AllScreen(ttext: 'Chats Screen'),
          ),
        ),
      ],
    );
  }

  Widget _buildContentSection(Size screenSize) {
    final List<String> peopleImages = [
      'girl1.png',
      'man1.png',
      'girl2.png',
      'man1.png',
    ];

    return Expanded(
      flex: 14,
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: peopleImages
                    .asMap()
                    .entries
                    .map(
                      (entry) => FiS2MAtifPicSetting(
                        image: entry.value,
                        isBorderEnable: peopleImages.first != entry.value,
                        height: screenSize.height * 0.100,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          const FiS2MAtifScreen2(
            image: 'man1.png',
            name: 'Anton Demeron',
            username: '@anton_demeron',
          ),
        ],
      ),
    );
  }

  static const chatSvg = 'assets/svgs/notification.svg';
  Widget _buildBottomNavigationBar(BuildContext context) {
    final List<String> bottomNavBarIcons = [
      'assets/svgs/home.svg',
      'assets/svgs/Search.svg',
      'assets/svgs/add.svg',
      'assets/svgs/Profile.svg',
      'assets/svgs/notification_2.svg',

    ];

    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 2,
      child: Container(
        height: 85.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(66, 61, 61, 0.89),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: bottomNavBarIcons
              .asMap()
              .entries
              .map(
                (entry) => _buildSvgIconButton(
                  context: context,
                  assetSVG: entry.value,
                  onPressed: () => _onNavBarItemTap(context, entry.key),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  void _onNavBarItemTap(BuildContext context, int index) {
    final List<Widget Function(BuildContext)> navScreens = [
      (context) => const FiS2MAtifScreen2Main(),
      (context) => const AllScreen(ttext: ' welcome Search Screen'),
      (context) => const AllScreen(ttext: 'Welcome Add Screen'),
      (context) => const AllScreen(ttext: 'Welcome profile Screen'),
      (context) => const AllScreen(ttext: 'welcome Notification Screen'),
    ];

    navigateToNextScreen(context, navScreens[index](context));
  }

  Widget _buildSvgIconButton({
    required BuildContext context,
    required String assetSVG,
    required VoidCallback onPressed,
  }) {
    final Size screenSize = MediaQuery.of(context).size;

    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        assetSVG,
        height: screenSize.height * 0.035,
        width: screenSize.height * 0.035,
      ),
    );
  }
}
