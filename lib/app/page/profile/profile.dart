import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Container(
            child: Icon(Icons.arrow_back_ios,size: 15,),
          )
        ],),
      ),
      body: Container(
        child: Column(
          children: [



          ],
        ),
      ),
    );
  }
}