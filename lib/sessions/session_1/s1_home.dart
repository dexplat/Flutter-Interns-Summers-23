import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_1/widgets/design/home_screen_card.dart';
import 'package:flutter_interns/sessions/session_1/widgets/design/stats.dart';
import 'package:flutter_interns/sessions/session_1/widgets/design/tab_capsule.dart';

import 'widgets/core/app_button/app_button.dart';

class S1Home extends StatelessWidget {
  const S1Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 20.0,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'DEX',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              smallSpace,
              const TabCapsule(),
              smallSpace,
              for (int i = 0; i < 2; i++) const HomeScreenCard(),
              smallSpace,
              const Stats(),
              smallSpace,
              const Text(
                '1BTC - Wbxclkjsldf',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22.0),
              ),
              smallSpace,
              AppButton(
                onPressed: () {
                  print('new button');
                },
                color: const Color(0xff39b54a),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
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
