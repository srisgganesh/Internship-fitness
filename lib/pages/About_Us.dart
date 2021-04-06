import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: SingleChildScrollView(
              child: Column(
                children: [
          Container(
            width: width,
            margin:const EdgeInsets.all(15.0),
            child: Text(
                "This is a Fitness and Wellness App",
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
