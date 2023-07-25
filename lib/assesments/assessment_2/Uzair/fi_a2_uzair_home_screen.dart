import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiA2UzairHomeScreen extends StatelessWidget {
  const FiA2UzairHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: const Alignment(-0.8, 0.5),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.transparent,
                      child: SvgPicture.asset(
                        "assets/Uzair_Assets/home_screen_see_more_icon.svg",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const Alignment(0.8, 0.5),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.transparent,
                      child: SvgPicture.asset(
                          "assets/Uzair_Assets/home_screen_vector_icon.svg"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: const CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/Uzair_Assets/home_screen_my_story.png")),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromARGB(255, 244, 125, 50),
                              width: 4)),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/Uzair_Assets/home_screen_man1_story.png",
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(2),
                      decoration: (BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromARGB(255, 244, 125, 50),
                              width: 4))),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/Uzair_Assets/home_screen_girl1_story.png"),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromARGB(255, 244, 125, 50),
                              width: 4)),
                      child: const CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/Uzair_Assets/home_screen_man2_story.png")),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 350,
              height: 480,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [BoxShadow(blurRadius: 1)]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 244, 125, 50),
                                    width: 4)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/Uzair_Assets/home_screen_man3_post.png"),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 70,
                            color: Colors.transparent,
                            child: const ListTile(
                              title: Text(
                                "Anton Dameron",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("@anton_dameron"),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            width: 25,
                            height: 25,
                            color: Colors.white,
                            child: SvgPicture.asset(
                                'assets/Uzair_Assets/home_screen_more_option.svg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      width: 350,
                      height: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent),
                      child: Image.asset(
                          "assets/Uzair_Assets/home_screen_card.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.transparent,
                            child: SvgPicture.asset(
                                'assets/Uzair_Assets/home_screen_post_like_icon.svg'),
                          ),
                          const SizedBox(width: 0),
                          Container(
                            width: 40,
                            height: 30,
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                "573",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.transparent,
                            child: SvgPicture.asset(
                              'assets/Uzair_Assets/home_screen_post_comment_icon.svg',
                            ),
                          ),
                          const SizedBox(width: 0),
                          Container(
                            width: 40,
                            height: 30,
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                "30",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.transparent,
                            child: SvgPicture.asset(
                                'assets/Uzair_Assets/home_screen_post_share_icon.svg'),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            width: 70,
                            height: 30,
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                "35 min ago",
                                style: TextStyle(
                                    color: Color.fromARGB(209, 94, 91, 91)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 87, 85, 85)),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: SvgPicture.asset(
                  'assets/Uzair_Assets/home_screen_lowerbar_icons.svg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
