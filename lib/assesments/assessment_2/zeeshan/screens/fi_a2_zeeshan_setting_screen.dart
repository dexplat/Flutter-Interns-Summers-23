import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanSettingScreen extends StatelessWidget {
  const FIA2ZeeshanSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Setting Screen',
            style: TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: const Color.fromRGBO(112, 108, 108, 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
