import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_as2_saleh/screens/home/fi_as2_saleh_home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final Widget smallSpace = const SizedBox(
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
              smallSpace,
              const Text(
                "Let's Connect Together",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              smallSpace,
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
                            Colors.white, 
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black), 
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20) 
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
                            0xFFFA9884),
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20)
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
