import 'package:doc_kit/app/views/home%20view/widgets/homeViewBodyWidgets.dart';
import 'package:doc_kit/app/views/home%20view/widgets/homeViewProfile.dart';
import 'package:doc_kit/app/views/home%20view/widgets/textfildwidget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade100,
              Colors.white,
              Colors.white,
              Colors.green.shade100,
              Colors.green.shade100,
            ],
          )),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeViewPrifile(),
                HomeViewTextFild(),
                SizedBox(
                  height: 35,
                ),
                homeViewBodyWidgets(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
