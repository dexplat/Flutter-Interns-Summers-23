import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/home/homescreen.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/sign_log/custom_widget/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SvgPicture.asset(
            'assets/svgs/Login screen logo.svg',
            width: 341.7,
            height: 333,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Let's Connect Together",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 43.57,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: MyAppButton(
            buttontxt: 'Login',
            txtclr: Colors.black,
            concolor: Colors.white,
          ),
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        MyAppButton(
          buttontxt: 'Sign up',
          txtclr: Colors.white,
          concolor: const Color(0xfffa9884),
        ),
      ])),
    );
  }
}
