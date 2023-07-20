import 'package:flutter/material.dart';

class MutaharHome extends StatelessWidget {
  const MutaharHome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 20.0,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Image.asset('assets/pic1.png'),
                ],
              )),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            child: const Center(
              child: Text(
                "Let's Connect",
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            child: const Center(
              child: Text(
                "Together",
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          smallSpace,
          for (int i = 0; i < 2; i++)
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 320.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  color: i == 0
                      ? Colors.white
                      : Color.fromARGB(255, 250, 152, 132)),
              child: Center(
                child: Text(
                  i == 1 ? 'Sign up' : 'Login',
                  style: TextStyle(
                    color: i == 1 ? Colors.white : Colors.black,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
