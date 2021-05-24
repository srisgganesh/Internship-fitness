import 'package:flutter/material.dart';

class Tryto extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Scaffold(
      appBar: AppBar(
        title: Text("Offline Videos Page"),
      ),
      body: SingleChildScrollView(
              child: Column(
                children: [
          Container(
            width: width,
            margin:const EdgeInsets.all(15.0),
            child: Text(
                "Offline Videos\n\nClicking on each type has to take it to its respective page using different functions\n\n\nThis is a Fitness and Wellness App",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
              ),
            ),
          ),
        ],),
      )
    );
  }
}
