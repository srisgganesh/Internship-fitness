import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: SingleChildScrollView(
              child: Column(
                children: [
          Container(
            width: width,
            margin:const EdgeInsets.all(17.0),
            child: Text(
                "Phone Number: **********\nE-mail Id: xyz@abc.com",
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
