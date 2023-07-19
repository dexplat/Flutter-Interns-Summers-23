import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> values = [
      "45%",
      "50%",
      "55%",
      "60%",
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      /// Mapping without spread operator
      children: values.asMap().entries.map(
        (i) {
          // logic
          if (i.key == values.length - 1) {
            return Container(
              color: Colors.blue,
              height: 35,
              width: 35,
            );
          }

          return Container(
            height: 50,
            width: 75,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: i.key == 0 ? Colors.white : Colors.transparent,
              boxShadow: i.key == 0
                  ? const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 12.0,
                      ),
                    ]
                  : [],
            ),
            child: Text(
              i.value,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
                color: i.key == 0 ? Colors.black : Colors.grey,
              ),
            ),
          );
        },
      ).toList(),

      /// Mapping with spread operator
      // children: [
      // ...values.asMap().entries.map(
      //       (i) => Container(
      //         height: 50,
      //         width: 75,
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(8),
      //           color:
      //               i.key == 0 ? Colors.white : Colors.transparent,
      //           boxShadow: i.key == 0
      //               ? const [
      //                   BoxShadow(
      //                     color: Colors.black12,
      //                     offset: Offset(0, 4),
      //                     blurRadius: 12.0,
      //                   ),
      //                 ]
      //               : [],
      //         ),
      //         child: Text(
      //           i.value,
      //           style: const TextStyle(
      //             fontWeight: FontWeight.w800,
      //             fontSize: 16.0,
      //           ),
      //         ),
      //       ),
      //     ),

      /// Mapping using loop
      // for (int i = 0; i < values.length; i++)
      //   Container(
      //     height: 50,
      //     width: 75,
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(8),
      //       color: i == 0 ? Colors.white : Colors.transparent,
      //       boxShadow: i == 0
      //           ? const [
      //               BoxShadow(
      //                 color: Colors.black12,
      //                 offset: Offset(0, 4),
      //                 blurRadius: 12.0,
      //               ),
      //             ]
      //           : [],
      //     ),
      //     child: Text(
      //       values[i],
      //       style: const TextStyle(
      //         fontWeight: FontWeight.w800,
      //         fontSize: 16.0,
      //       ),
      //     ),
      //   ),
      // ],
    );
  }
}
