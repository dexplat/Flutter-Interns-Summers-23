import 'package:flutter/material.dart';

class TabCapsule extends StatelessWidget {
  const TabCapsule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// List.generate()
          /// Spread operators ...[]
          /// for loop
          for (int i = 0; i < 2; i++)
            GestureDetector(
              onTap: () {
                if (i == 1) {
                  // 2nd gesture
                  print('this is 2nd'); // PR must be without print()

                  // debugPrint() --> debugging
                } else {
                  print('this is first');
                }
              },
              child: Container(
                height: 60.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: i == 1 ? Colors.transparent : const Color(0xff39b54a),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    i == 1 ? 'Exchange' : 'Swap',
                    style: TextStyle(
                      color: i == 1 ? Colors.grey : Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
