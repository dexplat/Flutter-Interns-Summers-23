import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_1/constants/constants.dart';
import 'package:flutter_interns/sessions/session_1/widgets/core/app_button/app_button.dart';
import 'package:flutter_interns/sessions/session_1/widgets/design/stats.dart';

part 'widgets/_tab_capsule.dart';
part 'widgets/_home_screen_card.dart';

class S1Home extends StatelessWidget {
  const S1Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 20.0,
    );

    return Padding(
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
          const _TabCapsule(),
          smallSpace,
          for (int i = 0; i < 2; i++) const _HomeScreenCard(),
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
            color: Constants.primaryColor,
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
    );
  }
}
