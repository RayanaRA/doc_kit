import 'package:flutter/material.dart';

class HomeViewPrifile extends StatelessWidget {
  const HomeViewPrifile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          color: Color(0xff0ACE9A)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Handwerker! ',
                  style: TextStyle(
                      color: Color(0xffFAFAFA),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Rubik'),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/Ellipse26.png',
                  ),
                ),
              ],
            ),
            Text(
              'Find Your Doctor',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Rubik'),
            ),
          ],
        ),
      ),
    );
  }
}
