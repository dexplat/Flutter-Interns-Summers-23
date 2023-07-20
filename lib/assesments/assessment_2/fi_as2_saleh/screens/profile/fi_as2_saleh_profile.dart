import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_as2_saleh/screens/profile/widgets/fi_as2_saleh_filter.dart';
import 'widgets/fi_as2_saleh_stats.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                    ),
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/fi_as2_saleh/girl1.png"),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 8),
                    child: Text(
                      'Kathrine Mils',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '@kathrine_mils',
                      style: TextStyle(
                        color: Color(0xFF706C6C),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatsColumn(name: "Photos", number: "315"),
                  StatsColumn(name: "Followers", number: "77.5k"),
                  StatsColumn(name: "Follows", number: "500"),
                ],
              ),
            ),
            const Filters(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/fi_as2_saleh/sun.png"),
                  Column(
                    children: [
                      Image.asset("assets/fi_as2_saleh/row1.png"),
                      const SizedBox(height: 15,),
                      Image.asset("assets/fi_as2_saleh/row2.png"),
                      const SizedBox(height: 15,),
                      Image.asset("assets/fi_as2_saleh/row3.png"),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
