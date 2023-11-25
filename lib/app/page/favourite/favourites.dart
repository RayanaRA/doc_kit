import 'package:doc_kit/app/page/favourite/widgets/bodyFavorit.dart';
import 'package:doc_kit/app/views/home%20view/widgets/featureDoctorWidget.dart';
import 'package:doc_kit/app/views/search%20view/Widgets/CatalogsWidgets.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
              Colors.green.shade100,
            ],
          )),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.only(left: 5),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Favourite Doctors',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
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
              ),
              SizedBox(
                height: 25,
              ),
              controller.text.isEmpty ? BodyFavourites() : Catalogs()
            ]),
          ),
        ),
      ),
    );
  }
}
