import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              Colors.white70,
              Colors.green.shade100,
            ],
          )),
          child: Column(
            children: [
              Container(
                height: 357,
                width: 425,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color(0xff0EBE7F)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Set up your profile',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 296,
                      child: Text(
                        'Update your profile to connect your doctor with better impression.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 65,
                            foregroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          Positioned(
                            left: 90,
                            bottom: 5,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(103, 114, 148, 0.8),
                              ),
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 190,
                ),
                child: Text(
                  'Personal information',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Text(
                          'Rayana',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff677294)),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'Contact Number',
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Text(
                          '+996 990 17 09 07',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff677294)),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'Date of birth',
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Text(
                          'DD MM YYYY',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff677294)),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'Location',
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Text(
                          'Add Details',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff677294)),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 54,
                width: 295,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff0EBE7F)),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik'),
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
