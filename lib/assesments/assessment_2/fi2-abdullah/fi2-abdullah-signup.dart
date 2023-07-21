import 'package:flutter/material.dart';

class Abbasi_home extends StatelessWidget {
  const Abbasi_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 10),
              child: Image.asset(
                'assets/circle pic.png',
                height: 333,
                width: 341.7,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
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
            
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 255, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(250, 152, 132, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}