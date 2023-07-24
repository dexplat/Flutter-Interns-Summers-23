import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-s2-MAtif/Widgets/Core/fi-s2-Atif-Button.dart';

import '../Constants/Constants,dart.dart';
import '../Constants/fi-s2-Atif-Navigation.dart';
import 'Screen2Main.dart';

class FiA2AtifLogin extends StatelessWidget {
  const FiA2AtifLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screen.width * 0.02,
            vertical: screen.height * 0.02,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset('assets/Login.png'),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'Let’s Connect\nTogether',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screen.height * 0.036,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: screen.height * 0.04),
                    FiS2MAtifLoginButton(
                      onPressed: () => navigateToReplaceScreen(
                        context,
                        const FiS2MAtifScreen2Main(),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screen.height * 0.020,
                        ),
                      ),
                    ),
                    SizedBox(height: screen.height * 0.02),
                    FiS2MAtifLoginButton(
                      onPressed: () => navigateToReplaceScreen(
                        context,
                        const FiS2MAtifScreen2Main(),
                      ),
                      backgroundColor: primaryColor,
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screen.height * 0.020,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
