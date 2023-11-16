import 'package:doc_kit/app/views/home%20view/widgets/listViewBilderLiveWidgets.dart';
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
              Colors.white,
              Colors.white,
              Colors.green.shade100
            ],
          )),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeViewPrifile(),
                TextFild(),
                SizedBox(
                  height: 35,
                ),
                ListViewBilder(),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'What are you worried about?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Align(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/catologBolezni${index + 1}.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Popular Doctor',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
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
                            width: 165.0,
                            height: 270.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/doctor${index + 1}.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 200.0,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Text(''),
                                    Text(''),
                                    Text(''),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFild extends StatelessWidget {
  const TextFild({
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

class HomeViewPrifile extends StatelessWidget {
  const HomeViewPrifile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          color: Color(0xff0ACE9A)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Handwerker! ',
                  style: TextStyle(
                      color: Color(0xffFAFAFA),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Rubik'),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/Ellipse26.png',
                  ),
                ),
              ],
            ),
            Text(
              'Find Your Doctor',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Rubik'),
            ),
          ],
        ),
      ),
    );
  }
}
