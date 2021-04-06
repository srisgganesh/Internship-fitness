import 'package:fitness_flutter/components/Header.dart';
import 'package:flutter/material.dart';

class Sessions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Header('Sessions'),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 35.0),
              ),
            ],),
          ),
      )
    );
  }
}
