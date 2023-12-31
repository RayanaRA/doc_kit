import 'package:doc_kit/app/components/Navbar/navbar_page.dart';
import 'package:doc_kit/app/components/container/list_card.dart';
import 'package:doc_kit/app/views/home_page/home_page.dart';
import 'package:doc_kit/app/page/profile/profile.dart';
import 'package:doc_kit/app/views/register/get_started.dart';
import 'package:doc_kit/app/views/register/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/getScr',
      routes: {
        '/profileOfDoctor': (context) => Profile(),
        '/homePage': (context) => HomePage(),
        '/list': (context) => const ListCard(),
        '/getScr': (context) => const GetStarted(),
        '/signUp': (context) => const SignUp(),
        '/navbarPage': (context) => const NavbarPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
