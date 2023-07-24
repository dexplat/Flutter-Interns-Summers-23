import 'package:flutter/material.dart';

import '../PicsSetting/fi-s2-MAtif-picSetting.dart';

class FiS2MAtifScreen2 extends StatelessWidget {
  final String image;
  final String name;
  final String username;

  const FiS2MAtifScreen2({
    required this.image,
    required this.name,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Card(
      elevation: 2,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Container(
        height: screenSize.height * 0.60,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(252, 252, 252, 1),
          borderRadius: BorderRadius.circular(screenSize.height * 0.03),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
          child: Column(
            children: [
              ListTile(
                leading: FiS2MAtifPicSetting(
                  image: image,
                  isBorderEnable: true,
                  height: screenSize.height * 0.08,
                ),
                title: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  username,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(87, 83, 83, 0.85),
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz,
                  size: 40,
                  color: Color.fromRGBO(112, 108, 108, 1),
                ),
              ),
              Container(
                height: screenSize.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenSize.height * 0.03),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/card.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.05,
                      width: screenSize.width * 0.45,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite_border),
                          Text(
                            '573',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.comment),
                          Text(
                            '30',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.share),
                        ],
                      ),
                    ),
                    Text(
                      '35 min ago',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(158, 152, 152, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Down the road',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
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


