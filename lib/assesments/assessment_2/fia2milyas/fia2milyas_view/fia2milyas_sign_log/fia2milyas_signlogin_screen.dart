import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_home/fia2milyas_homescreen.dart';
import 'package:flutter_interns/assesments/assessment_2/fia2milyas/fia2milyas_view/fia2milyas_sign_log/fia2milyas_custom_widget/fia2milyas_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiA2MIlyasLogInScreen extends StatelessWidget {
  const FiA2MIlyasLogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
                  MaterialPageRoute(
                      builder: (context) => const FiA2MIlyasHomeScreen()),
                );
              },
              child: const FiA2MIlyasMyAppButton(
                buttontxt: 'Login',
                txtclr: Colors.black,
                concolor: Colors.white,
              ),
            ),
            const FiA2MIlyasMyAppButton(
              buttontxt: 'Sign up',
              txtclr: Colors.white,
              concolor: Color(0xfffa9884),
            ),
          ],
        ),
      ),
    );
  }
}
