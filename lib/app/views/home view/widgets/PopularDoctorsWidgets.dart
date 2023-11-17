import 'package:flutter/material.dart';

class PopularDoctorsWidgets extends StatelessWidget {
  const PopularDoctorsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
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
                width: 165.0,
                height: 270.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/doctor${index + 1}.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 200.0,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Dr. Fillerup Grab',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Medicine Specialist',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(103, 114, 148, 0.80),
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '★★★★',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 25),
                            ),
                            Text(
                              '★',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 25),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
