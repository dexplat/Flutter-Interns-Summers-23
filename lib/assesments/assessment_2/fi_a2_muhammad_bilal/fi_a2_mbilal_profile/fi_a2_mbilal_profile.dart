import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BilalProfileScreen extends StatefulWidget {
  const BilalProfileScreen({Key? key}) : super(key: key);

  @override
  State<BilalProfileScreen> createState() => _BilalProfileScreenState();
}

class _BilalProfileScreenState extends State<BilalProfileScreen> {
  final text1 = ['Photos', 'Followers', 'Follows'];
  final text2 = ['315', '77.5k', '500'];
  final text3 = ['Photos', 'Video', 'Tagged'];
  final picture = [
    'assets/fi_a2_mbilal_assets/pic2.png',
    'assets/fi_a2_mbilal_assets/pic3.png',
    'assets/fi_a2_mbilal_assets/pic4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 30, right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/fi_a2_mbilal_assets/Go back.svg',
                width: 27,
                height: 19,
              ),
              const Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
              SvgPicture.asset(
                'assets/fi_a2_mbilal_assets/Settings.svg',
                width: 27,
                height: 28,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/girl1.png'),
              radius: 50,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24),
          child: Center(
            child: Text(
              'Kathrine Mils',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12),
          child: Center(
            child: Text(
              '@kathrine_mils',
              style: TextStyle(
                color: Color(0xFF706C6C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < text1.length; i++)
                Column(
                  children: [
                    Text(
                      text1[i],
                      style: const TextStyle(
                        color: Color(0xFF706C6C),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      text2[i],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < text3.length; i++)
                i == 0
                    ? Container(
                        alignment: Alignment.center,
                        width: 107,
                        height: 39,
                        decoration: BoxDecoration(
                          color: Color(0xFFF575353),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          text3[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      )
                    : Text(
                        text3[i],
                        style: const TextStyle(
                          color: Color(0xFF706C6C),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
              const Icon(
                Icons.more_horiz_sharp,
                size: 35,
                color: Color(0xFF706C6C),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25, left: 24, right: 19),
          child: Row(
            children: [
              Container(
                  width: 180,
                  height: 275,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/fi_a2_mbilal_assets/pic1.png')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < picture.length; i++)
                      Container(
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(picture[i]),
                      ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
