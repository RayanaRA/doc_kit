import 'package:flutter/material.dart';

class FindDoctorsWidgets extends StatelessWidget {
  const FindDoctorsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            const Text(
              'Find Doctors',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Rubik'),
            ),
          ],
        ),
        SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white)),
              hintText: 'Dentis',
              hintStyle: TextStyle(
                  color: Color(0xff677294),
                  fontSize: 15,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFf677294),
              ),
              suffixIcon: Icon(Icons.close, color: Color(0xff677294)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
