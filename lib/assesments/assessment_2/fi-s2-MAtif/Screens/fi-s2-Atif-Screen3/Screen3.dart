import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-s2-MAtif/Screens/AllScreen.dart';

import '../../Constants/fi-s2-Atif-Navigation.dart';
import '../../PicsSetting/fi-s2-MAtif-picSetting.dart';

class FiS2MAtifScreen3 extends StatefulWidget {
  const FiS2MAtifScreen3({Key? key}) : super(key: key);

  @override
  State<FiS2MAtifScreen3> createState() =>
      _FiS2MAtifScreen3State();
}

class _FiS2MAtifScreen3State extends State<FiS2MAtifScreen3> {
  Map<String, Widget>? selectedTab;

  @override
  void initState() {
    super.initState();
    selectedTab = {'Photos': const PhotoTab()};
  }

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;



    final Map<String, Widget> tabBarItems = {
      'Photos': const PhotoTab(),
      'Videos': const VideoTab(),
      'Tagged': const TaggedTab(),
      'More': const SizedBox(),
    };

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTopAppBar(screen),
            _buildProfileSection(screen),
            _buildTabBar(screen, tabBarItems),
          ],
        ),
      ),
    );
  }

  Widget _buildTopAppBar(Size screen) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, size: 30),
          ),
          Text(
            'My Profile',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: screen.height * 0.025,
            ),
          ),
          IconButton(
            onPressed: () => navigateToNextScreen(
              context,
              const AllScreen(ttext: 'setting Screen'),
            ),
            icon: const Icon(Icons.settings, size: 30),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(Size screen) {
    final Map<String, String> stats = {
      'Photos': '315',
      'Followers': '77.5k',
      'Follows': '500',
    };
    return Expanded(
      flex: 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FiS2MAtifPicSetting(
            image: 'girl1.png',
            height: screen.height * 0.15,
          ),
          SizedBox(height: screen.height * 0.02),
          Text(
            'Kathrine Mils',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: screen.height * 0.025,
            ),
          ),
          SizedBox(height: screen.height * 0.005),
          Text(
            '@kathrine_mils',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: screen.height * 0.016,
              color: const Color.fromRGBO(112, 108, 108, 1),
            ),
          ),
          SizedBox(height: screen.height * 0.04),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screen.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var entry in stats.entries)
                  Column(
                    children: [
                      Text(
                        entry.key,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screen.height * 0.016,
                          color: const Color.fromRGBO(112, 108, 108, 1),
                        ),
                      ),
                      Text(
                        entry.value,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screen.height * 0.020,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTabBar(Size screen, Map<String, Widget> tabBarItems) {
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tabBarItems.entries.map((tab) {
              final tabName = tab.key;
              final isSelectedTab = selectedTab!.entries.first.key == tabName;

              if (tabName == 'More') {
                return GestureDetector(
                  onTap: () => navigateToNextScreen(
                    context,
                    const AllScreen(ttext: "more Screen"),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    size: 35,
                    color: Color.fromRGBO(112, 108, 108, 1),
                  ),
                );
              }

              return GestureDetector(
                onTap: () => setState(() {
                  selectedTab = {tabName: tab.value};
                }),
                child: Container(
                  height: screen.height * 0.05,
                  width: screen.width * 0.30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelectedTab ?  Color.fromRGBO(66, 61, 61, 0.89) : null,
                    borderRadius: BorderRadius.circular(screen.height * 0.025),
                  ),
                  child: Text(
                    tabName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: screen.height * 0.018,
                      color: isSelectedTab
                          ? const Color.fromRGBO(239, 239, 239, 1)
                          : const Color.fromRGBO(112, 108, 108, 1),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: screen.height * 0.01),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screen.width * 0.04),
              child: selectedTab!.entries.first.value,
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoTab extends StatelessWidget {
  const PhotoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screen.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screen.height * 0.025),
              image: const DecorationImage(
                image: AssetImage('assets/images/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 2; i < 5; i++)
                Container(
                  height: screen.height * 0.132,
                  width: screen.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image$i.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class VideoTab extends StatelessWidget {
  const VideoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Video Tab',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: const Color.fromRGBO(112, 108, 108, 0.5),
        ),
      ),
    );
  }
}

class TaggedTab extends StatelessWidget {
  const TaggedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Tagged Tab',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: const Color.fromRGBO(112, 108, 108, 0.5),
        ),
      ),
    );
  }
}
