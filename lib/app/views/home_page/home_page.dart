import 'package:doc_kit/app/components/constatnts/colors.dart';
import 'package:doc_kit/app/components/constatnts/colors.dart';
import 'package:doc_kit/app/components/constatnts/colors.dart';
import 'package:doc_kit/app/components/container/list_card.dart';
import 'package:doc_kit/app/components/text_field.dart/text_field.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  List catNames = [
    'Dental',
    'Heart',
    'Eye',
    'Brain ',
    'Ear',
  ];
  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: gColor,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: gColor,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: gColor,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: gColor,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: gColor,
      size: 30,
    ),
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: gwColor,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.9,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [wColor.withOpacity(0.8), gColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Hi handweaker!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 20, top: 10),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("assets/images/user.png"),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Text(
                                'Find trusted doctors',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20,right: 10),
                        child: Container(
                          width: 335,
                          height: 50,
                          child: TextFields(
                            hintText: 'search..',
                            hintStyle: TextStyle(
                              color: dColor
                            ),
                            suffixIcon: Icon(Icons.close,color: dColor,),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: wColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 230, top: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                child: Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catIcons.length,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 15),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: wColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: wColor,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Center(child: catIcons[index]),
                            )
                          ]);
                        })),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 180),
                    child: Text(
                      'Popular doctors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListCard()
                ],
              ))
            ],
          ),
        ]),
      ),
    ));
  }
}
