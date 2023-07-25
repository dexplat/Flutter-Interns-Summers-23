import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiA2UzairProfileScreen extends StatelessWidget {
  const FiA2UzairProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: const Alignment(-0.8, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.transparent,
                      child: SvgPicture.asset(
                        "assets/Uzair_Assets/Go_back.svg",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 150,
                      height: 40,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const Alignment(0.8, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.transparent,
                      child:
                          SvgPicture.asset("assets/Uzair_Assets/Settings.svg"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: 150,
              height: 120,
              color: Colors.transparent,
              child: Image.asset(
                  "assets/Uzair_Assets/profile_screen_girl_profile_pic.png"),
            ),
            const SizedBox(height: 5),
            Container(
              width: 200,
              height: 80,
              color: Colors.transparent,
              child: const Center(
                child: ListTile(
                  title: Text(
                    "Kathrine Mils",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("@kathrine_mils",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "Photos",
                      style: TextStyle(
                          color: Color.fromARGB(255, 82, 82, 82), fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "Followers",
                      style: TextStyle(
                          color: Color.fromARGB(255, 82, 82, 82), fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "Follows",
                      style: TextStyle(
                          color: Color.fromARGB(255, 82, 82, 82), fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "315",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "77.5k",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "500",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 95, 94, 94),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Photos",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 0),
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Video",
                      style: TextStyle(
                          color: Color.fromARGB(255, 115, 114, 114),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 0),
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Tagged",
                      style: TextStyle(
                          color: Color.fromARGB(255, 115, 114, 114),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.transparent,
                  child: SvgPicture.asset(
                      "assets/Uzair_Assets/home_screen_more_option.svg"),
                )
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                width: 350,
                height: 290,
                color: Colors.transparent,
                child: Image.asset(
                  "assets/Uzair_Assets/Profile photo gallery.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
