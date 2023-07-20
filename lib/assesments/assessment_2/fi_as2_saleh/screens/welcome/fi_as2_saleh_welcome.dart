import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_as2_saleh/screens/home/fi_as2_saleh_home.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class LoginSaleh extends StatefulWidget {
  const LoginSaleh({super.key});

  @override
  State<LoginSaleh> createState() => _LoginSalehState();
}

class _LoginSalehState extends State<LoginSaleh> {
  // final String assetName = 'assets/svgs/home.svg';
  final Widget smallPadding = const SizedBox(
    height: 50,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage('assets/fi_as2_saleh/LoginLogo.png')),
              smallPadding,
              const Text(
                "Let's Connect Together",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              smallPadding,
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.white, //background color of button
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black), //border width and color
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20) //content padding inside button
                        ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFFFA9884), //background color of button
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black), //border width and color
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20) //content padding inside button
                        ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              )
            ],
          ),
        ));
  }
}
