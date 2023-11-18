import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureDoctorWidget extends StatefulWidget {
  const FeatureDoctorWidget({Key? key}) : super(key: key);

  @override
  _FeatureDoctorWidgetState createState() => _FeatureDoctorWidgetState();
}

class _FeatureDoctorWidgetState extends State<FeatureDoctorWidget> {
  bool isStrarYellow = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Align(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 130.0,
                height: 230.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {});
                              isStrarYellow = !isStrarYellow;
                            },
                            icon: isStrarYellow
                                ? Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '★',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.yellow),
                              ),
                              Text(
                                '3.4',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/doctor${index + 1}.jpg'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dr. Crick',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          CupertinoIcons.money_dollar,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text(
                          ' 25.00/ hours',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
