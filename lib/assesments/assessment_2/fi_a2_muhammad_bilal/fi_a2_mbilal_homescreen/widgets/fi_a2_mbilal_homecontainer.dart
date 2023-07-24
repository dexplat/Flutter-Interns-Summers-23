import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BilalHomeContainer extends StatelessWidget {
  const BilalHomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 15, right: 26),
      child: Container(
        width: double.infinity,
        height: 440,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFFCFCFC),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      width: 3,
                      color: Color(0xFFFA9884),
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Image.asset(
                      'assets/fi_a2_mbilal_assets/man3.png',
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
                title: const Text(
                  'Anton Demeron',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                subtitle: const Text(
                  '@anton_demeron',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz_sharp,
                  size: 35,
                  color: Color(0xFF706C6C),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Image.asset(
                'assets/card.png',
                width: double.infinity,
                height: 290,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 12, right: 18),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/fi_a2_mbilal_assets/Like.svg',
                    color: Colors.black,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    '573',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  SvgPicture.asset(
                    'assets/fi_a2_mbilal_assets/Coment.svg',
                    color: Colors.black,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '30',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(
                    'assets/fi_a2_mbilal_assets/Share.svg',
                    color: Colors.black,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    '35 min ago',
                    style: TextStyle(
                      color: Color(0xFF9E9898),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 14),
              child: Text(
                'Down the road',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
