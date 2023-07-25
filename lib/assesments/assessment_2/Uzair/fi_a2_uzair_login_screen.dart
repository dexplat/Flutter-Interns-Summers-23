import 'package:flutter/material.dart';

class FiA2UzairLoginScreen extends StatelessWidget {
  const FiA2UzairLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 70,
              left: -4,
              child: Container(
                width: 400,
                height: 400,
                color: Colors.transparent,
                child:
                    Image.asset('assets/Uzair_Assets/login_screen_image.png'),
              )),
          const Positioned(
            top: 490,
            left: 50,
            child: SizedBox(
              width: 300,
              height: 200,
              child: Text(
                "Let's Connect Together",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 23,
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    (50),
                  ),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: const Center(
                  child: Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Positioned(
            top: 680,
            left: 23,
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 242, 143, 113),
                  borderRadius: BorderRadius.circular(
                    (50),
                  ),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: const Center(
                  child: Text(
                "Signup",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          )
        ],
      )),
    );
  }
}
