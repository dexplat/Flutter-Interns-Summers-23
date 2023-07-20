import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedPic extends StatelessWidget {
  Color borderclr;
  Widget custompic;
  RoundedPic({super.key, required this.borderclr, required this.custompic});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
          border: Border.all(
              color: borderclr,
              width: 3,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: custompic,
        ));
  }
}


// Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Center(
//             child: Image.asset('assets/girl1.png'),
//           ),
//           Positioned(
//             top: 0,

//             left: 0,

//             right: 0,

//             bottom: 0,

//             child: Container(
//               height: 10,

//               width: 10,

//               child: Text('1'),

//               //child: SvgPicture.asset('assets/svgs/add.svg')
//             ),

//             // width: 30,

//             // height: 20,

//             // width: 20,
//           )
//         ],
//       ),
    
