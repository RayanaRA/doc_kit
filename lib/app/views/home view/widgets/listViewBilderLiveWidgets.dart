import 'package:flutter/material.dart';

class ListViewBilder extends StatefulWidget {
  const ListViewBilder({Key? key}) : super(key: key);

  @override
  _ListViewBilderState createState() => _ListViewBilderState();
}

class _ListViewBilderState extends State<ListViewBilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
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
                width: 145.0,
                height: 230.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/doctor${index + 1}.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 55,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.fiber_manual_record,
                                size: 10,
                                color: Colors.white,
                              ),
                              Text(
                                'LIVE',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
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
