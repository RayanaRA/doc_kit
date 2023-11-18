import 'package:flutter/material.dart';

class HomeViewTextFild extends StatelessWidget {
  const HomeViewTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 0.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Seach...',
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Live Doctors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
