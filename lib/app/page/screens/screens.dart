import 'package:doc_kit/app/page/favourite/favourites.dart';
import 'package:doc_kit/app/views/home_page/home_page.dart';
import 'package:doc_kit/app/page/profile/profile.dart';
import 'package:doc_kit/app/page/tests/tests.dart';
import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
 Screens({ Key? key }) : super(key: key);
 int _selectedIndex = 0;
List<Widget> screens =[
  Container(child: HomePage()),
  Container(child: Favourites()),
  Container(child: Tests()),
  Container(child: Profile())
  


];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: screens.elementAt(_selectedIndex ) ,


    );
  }
}