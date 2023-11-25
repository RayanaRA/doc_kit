import 'package:doc_kit/app/views/home%20view/widgets/featureDoctorWidget.dart';
import 'package:flutter/material.dart';

class BodyFavourites extends StatefulWidget {
  const BodyFavourites({Key? key}) : super(key: key);

  @override
  _BodyFavoritState createState() => _BodyFavoritState();
}

class _BodyFavoritState extends State<BodyFavourites> {
  bool isFAvorite = true;
  bool iFAvorite = true;
  bool FAvorite = true;
  bool fAvorite = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
              Container(
                height: 210,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFAvorite = !isFAvorite;
                        });
                      },
                      icon: isFAvorite
                          ? Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 55,
                        foregroundImage: AssetImage('assets/images/doc1.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Dr. Christenfeld N',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Specalist Cardiology',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0EBE7E)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 210,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          iFAvorite = !iFAvorite;
                        });
                      },
                      icon: iFAvorite
                          ? Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 55,
                        foregroundImage:
                            AssetImage('assets/images/doctor2.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Dr. Christenfeld N',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Specalist Cardiology',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0EBE7E)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
              Container(
                height: 210,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          FAvorite = !FAvorite;
                        });
                      },
                      icon: FAvorite
                          ? Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 55,
                        foregroundImage: AssetImage('assets/images/doc2.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Dr. Christenfeld N',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Specalist Cardiology',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0EBE7E)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 210,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fAvorite = !fAvorite;
                        });
                      },
                      icon: fAvorite
                          ? Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 55,
                        foregroundImage: AssetImage('assets/images/doc3.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Dr. Christenfeld N',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Specalist Cardiology',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0EBE7E)),
                        textAlign: TextAlign.center,
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
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Feature Doctor',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik'),
            ),
            SizedBox(
              width: 200,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See all>',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff677294),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 15,
        ),
        FeatureDoctorWidget(),
      ],
    );
  }
}
