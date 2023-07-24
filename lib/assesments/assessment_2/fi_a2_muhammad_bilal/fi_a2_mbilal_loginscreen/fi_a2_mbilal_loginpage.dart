
import 'package:flutter/material.dart';

class BilalLoginPage extends StatelessWidget {
  const BilalLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height:50,),
              Center(child: Image.asset('assets/fi_a2_mbilal_assets/loginlogo.png')),
              const SizedBox(height:43,),
              const Center(child: Text('Let’s Connect \nTogether',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),)),
              const SizedBox(height:43,),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                      ),
                    ),
                  ),
              ),
              ),
              const SizedBox(height:20,),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration:  BoxDecoration(
                    color: Color(0xFFFA9884),
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
