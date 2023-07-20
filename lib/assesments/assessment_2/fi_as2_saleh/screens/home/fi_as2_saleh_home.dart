import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_as2_saleh/screens/profile/fi_as2_saleh_profile.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_as2_saleh/screens/home/widgets/fi_as2_saleh_avatar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> stories = [
    "assets/girl1.png",
    "assets/man1.png",
    "assets/girl2.png",
    "assets/man2.png",
  ];

  final Widget smallPadding = const SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 10, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svgs/menu.svg",),
                  SvgPicture.asset("assets/svgs/notification.svg",)
                ],
              ),
            ),
            smallPadding,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: stories.asMap().entries.map((i) {
                  if (i.key == 0) {
                    return Avatar(border: false, image: i.value);
                  } else {
                    return Avatar(border: true, image: i.value);
                  }
                }).toList()),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFCFCFC),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        color: Color(0x40000000))
                  ]),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFFFA9884),
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/fi_as2_saleh/man3.png'),
                          radius: 23,
                        ),
                      ),
                    ),
                    title: Text(
                      'Anton Demeron',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                      size: 25,
                    ),
                    subtitle: Text('@anton_demeron'),
                  ),
                  Image.asset(
                    'assets/card.png',
                    width: 400,
                    height: 300,
                  ),
                  smallPadding,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                Text(
                                  "573",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.messenger_outline,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                Text(
                                  "30",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                        ),
                        Icon(
                          Icons.send_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 55.0),
                          child: Text("35 min ago",),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                    child: Text(
                      "Down the road",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        margin: const EdgeInsets.only(bottom: 20, top: 0, left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xE3423D3D)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_filled,
              size: 35,
              color: Color(0xFFFA9884),
            ),
            Icon(
              Icons.search,
              size: 35,
              color: Color(0xFF9E9898),
            ),
            Icon(
              Icons.add_box_rounded,
              size: 35,
              color: Color(0xFF9E9898),
            ),
            InkWell(
              onTap: () { 
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );},
              child: Icon(
                Icons.person,
                size: 35,
                color: Color(0xFF9E9898),
              ),
            ),
            Icon(
              Icons.notifications,
              size: 35,
              color: Color(0xFF9E9898),
            ),
          ],
        ),
      ),
    );
  }
}
