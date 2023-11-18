import 'package:doc_kit/app/views/home_page/home_page.dart';
import 'package:doc_kit/app/views/search%20view/FindDoctorsWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedInhdex = 0;
  final _screens = [
    HomePage(),
    FindDoctorsWidgets(),
    Text('data'),
    Text('data'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedInhdex],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          iconSize: 25,
          selectedFontSize: 25,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF0EBE7F),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            fontSize: 15,
          ),
          currentIndex: _selectedInhdex,
          onTap: (index) {
            setState(() {
              _selectedInhdex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home View'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Serch View'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book_solid), label: 'Home View'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: 'Home View'),
          ],
        ),
      ),
    );
  }
}
