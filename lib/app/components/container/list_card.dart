// import 'package:flutter/material.dart';

// class ListCard extends StatelessWidget {
//   const ListCard({Key? key, this.child, this.which, this.name, this.text}) : super(key: key);
//   final Widget? child;
//   final String? which;
//   final String? name;

//   final String? text;

//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//         child: Container(
//           width: 300,
//           height: 160,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 200, top: 5),
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Image.asset(
//                     'assets/images/image.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Padding(
//                 child: Text('psyhologist',
//                     style: TextStyle(color: Colors.black, fontSize: 15)),
//                 padding: EdgeInsets.only(right: 190, top: 3),
//               ),
//               Padding(
//                 child: Text('Ismailova Aijan',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//                 padding: EdgeInsets.only(right: 160, top: 2),
//               ),
//               InkWell(
//                 onTap: (){

//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 100, top: 20),
//                   child: Container(
//                     width: 80,
//                     height: 20,
//                     child: Center(child: Text('go to page')),
//                     decoration: BoxDecoration(
//                         color: Color(0xFF00ebe7f),
//                         borderRadius: BorderRadius.circular(5)),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 255, 255, 255),
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//       );

//   }
// }
import 'package:doc_kit/app/components/constatnts/colors.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: wColor,
                      boxShadow: [
                        BoxShadow(
                          color: dColor,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/doc${index + 1}.png',
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: wColor,
                                shape: BoxShape.circle,
                              
                                
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.favorite_outline,
                                color: gColor,
                                size: 28,
                              )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Dr. Fillerup Grab',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'Medicine Specialist',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 80,
                            height: 12,
                            child: Image.asset(
                              'assets/images/star.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
