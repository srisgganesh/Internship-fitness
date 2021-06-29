import 'package:flutter/material.dart';

class FitnessChallenge extends StatelessWidget {

  final Map<String, String> element = {
    'title': 'Challenge for the week',
    'subtitle': 'Life is about accepting the challenges along the way, choosing to keep moving forward, and savoring the journey',
    'image': 'assets/images/image011.jpg',
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: width,
          height: 200.0,
          margin: EdgeInsets.only(
            right: 15.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(this.element['image']),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
        ),
        Text(
          this.element['title'],
          style: TextStyle(fontSize: 14.0),
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            this.element['subtitle'],
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 15.0,
          ),
          child: Text(
            'Click to Join',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
