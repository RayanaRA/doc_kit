import 'package:flutter/material.dart';

class SiptomiListViewBilderWidgets extends StatelessWidget {
  const SiptomiListViewBilderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Align(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/catologBolezni${index + 1}.png'),
                      fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
