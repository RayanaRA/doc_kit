import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, this.child, this.which, this.name, this.text}) : super(key: key);
  final Widget? child;
  final String? which;
  final String? name;
  
  final String? text;


  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(
          width: 300,
          height: 160,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 5),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/images/image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                child: Text('psyhologist',
                    style: TextStyle(color: Colors.black, fontSize: 15)),
                padding: EdgeInsets.only(right: 190, top: 3),
              ),
              Padding(
                child: Text('Ismailova Aijan',
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                padding: EdgeInsets.only(right: 160, top: 2),
              ),
              InkWell(
                onTap: (){
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, top: 20),
                  child: Container(
                    width: 80,
                    height: 20,
                    child: Center(child: Text('go to page')),
                    decoration: BoxDecoration(
                        color: Color(0xFF00ebe7f),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );
    
  }
}
