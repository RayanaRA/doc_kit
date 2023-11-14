import 'package:doc_kit/app/views/search%20view/Widgets/BiographyContainerWidgets.dart';
import 'package:doc_kit/app/views/search%20view/Widgets/searchWidgets.dart';
import 'package:flutter/material.dart';

class SeachView extends StatelessWidget {
  static String route = 'SearchView ';
  const SeachView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const FindDoctorsWidgets(),
              const SizedBox(
                height: 20,
              ),
              BiographyContainerWidgets(
                title: 'Dr. Shruti Kedia',
                assetName: 'assets/images/doctor1.jpg',
                patientStories: '78',
                proset: '80',
                time: '13 ',
                yearsExp: '7',
              ),
              BiographyContainerWidgets(
                title: 'Dr. Murot Jon',
                assetName: 'assets/images/doctor2.jpg',
                patientStories: '88',
                proset: '75',
                time: '11',
                yearsExp: '5',
              ),
              BiographyContainerWidgets(
                title: 'Dr.Muslim bek ',
                assetName: 'assets/images/doctor3.jpg',
                patientStories: '68',
                proset: '96',
                time: '12',
                yearsExp: '9',
              ),
              BiographyContainerWidgets(
                title: 'Dr. Madina ',
                assetName: 'assets/images/doctor4.jpg',
                patientStories: '48',
                proset: '35',
                time: '10',
                yearsExp: '2',
              ),
              BiographyContainerWidgets(
                title: 'Dr. Javlon',
                assetName: 'assets/images/doctor5.jpg',
                patientStories: '48',
                proset: '55',
                time: '17',
                yearsExp: '6',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
