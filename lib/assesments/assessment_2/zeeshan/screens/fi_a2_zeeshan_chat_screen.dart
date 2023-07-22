import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanChatScreen extends StatelessWidget {
  const FIA2ZeeshanChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Chat Screen',
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
