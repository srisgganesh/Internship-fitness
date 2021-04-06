import 'package:fitness_flutter/components/Header.dart';
import 'package:flutter/material.dart';
import 'package:fitness_flutter/pages/About_Us.dart';
import 'package:fitness_flutter/pages/Contact_Us.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Header('Settings'),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 35.0),
              ),
              ListTile(
                title: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    ),
                    ),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
                },
              ),
              ListTile(
                title:  Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    ),
                    ),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
                },
              ),
            ],           
            ),
          ),
      )
    );
  }
}
