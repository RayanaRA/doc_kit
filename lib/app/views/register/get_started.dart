import 'package:doc_kit/app/components/container/container.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  static String route = 'Get Started ';
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/image.png'),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(children: [
              Text(
                'Find Trusted Doctors',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'fast and simple',
                style: TextStyle(
                  color: Color(0xFF0ebe7f),
                ),
              )
            ]),
          )),
          SizedBox(
            height: 160,
          ),
          Container_widget(
            onTap: () {
              Navigator.pushNamed(context, '/navbarPage');
            },
            text: 'Get started',
          )
        ],
      ),
    ));
  }
}
