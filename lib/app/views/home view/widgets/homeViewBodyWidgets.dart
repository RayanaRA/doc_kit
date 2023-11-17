import 'package:doc_kit/app/views/home%20view/widgets/PopularDoctorsWidgets.dart';
import 'package:doc_kit/app/views/home%20view/widgets/SiptomiListViewBilderWidgets.dart';
import 'package:doc_kit/app/views/home%20view/widgets/featureDoctorWidget.dart';
import 'package:doc_kit/app/views/home%20view/widgets/listViewBilderLiveWidgets.dart';
import 'package:flutter/material.dart';

class homeViewBodyWidgets extends StatelessWidget {
  const homeViewBodyWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListViewBilder(),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'What are you worried about?',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik'),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      SiptomiListViewBilderWidgets(),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Popular Doctor',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik'),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      PopularDoctorsWidgets(),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Feature Doctor',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik'),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      FeatureDoctorWidget(),
    ]);
  }
}
