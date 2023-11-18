import 'package:doc_kit/app/views/home%20view/widgets/homeViewBodyWidgets.dart';
import 'package:doc_kit/app/views/home%20view/widgets/homeViewProfile.dart';
import 'package:doc_kit/app/views/search%20view/seachView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController controller = TextEditingController();
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
                Align(
                  heightFactor: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: controller,
                            onChanged: (query) {
                              setState(() {});
                            },
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
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.clear();
                                    FocusScope.of(context).unfocus();
                                  },
                                  icon: Icon(Icons.close),
                                  color: Color(0xff677294)),
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
                          SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                homeViewBodyWidgets()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
