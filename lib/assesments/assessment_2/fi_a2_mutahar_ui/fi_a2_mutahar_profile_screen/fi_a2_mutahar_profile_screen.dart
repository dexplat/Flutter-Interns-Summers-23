import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MutaharProfile extends StatelessWidget {
  const MutaharProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> values = [
      "Photos",
      "Followers",
      "Follows",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the title in the app bar
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0), // Adjust the padding as needed
            child: SvgPicture.asset(
              'assets/svgs/profiletask.svg',
              width: 20, // Adjust the width as needed
              height: 33, // Adjust the height as needed
            ),
          ),
        ],
      ),
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -1), // Adjust the vertical offset as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/girl1.png'),
              ),
              const SizedBox(
                height: 30,
              ), // Add some space between the CircleAvatar and the Text
              const Text(
                'Kathrine Mils',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '@kathrinemils',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 81, 77, 77),
                ),
              ),
              const SizedBox(
                  height: 20), // Add some space between the Text and the photos
              Column(
                children: [
                  Image.asset(
                    'assets/1.png',
                    width: 270,
                    height: 50,
                  ),
                  const SizedBox(
                      height: 10), // Add some space between the photos
                  Image.asset(
                    'assets/2.png',
                    width: 400,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 10,
                    width: 10,
                  ), // Add some space between the photos
                  Image.asset(
                    'assets/3.png',
                    width: 320,
                    height: 210,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
