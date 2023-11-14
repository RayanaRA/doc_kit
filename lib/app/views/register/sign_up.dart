import 'package:doc_kit/app/components/container/container.dart';
import 'package:doc_kit/app/components/text_field.dart/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static String route = 'Get Started ';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
                child: Column(
              children: [
                Text(
                  'Join us to start new appointment',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Maintain a healthy lifestyle with us',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            )),
            SizedBox(height: 80),
            TextFields(
              hintText: 'Name',
            ),
            SizedBox(height: 20),
            TextFields(
              hintText: 'E-mail',
            ),
            SizedBox(height: 20),
            TextFields(
              hintText: 'Password',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 55),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context,'/homePage');
                },
                child: Container_widget(
                  
                  text: 'Sign Up',
                ),
              ),
            ),
            TextButton(onPressed: (){}, child: Text('Have an account,Sign in',
            style: TextStyle(
              color: Colors.blue,
              
            ),
            ))
          ],
        ),
      ),
    );
  }
}
