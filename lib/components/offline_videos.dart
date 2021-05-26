import 'package:flutter/material.dart';
import 'package:fitness_flutter/pages/offline_workout_list.dart';

class OfflineVideos extends StatelessWidget {
  final Map<String, String> cardInfo = {
    'title': 'Offline Videos',
    'image': 'assets/images/image004.jpg',
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: SizedBox(
            width: size.width - 10,
            height: 230,
            child: InkWell(
              child: Container(
                 margin: EdgeInsets.only(left: 20,right: 20,top: 40),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(20.0),
                     bottomRight: Radius.circular(20.0),
                     topLeft: Radius.circular(20.0),
                     topRight: Radius.circular(20.0),
                   ),
                   image: DecorationImage(
                     image: AssetImage("assets/images/image004.jpg"),
                  fit: BoxFit.cover),
                ),
                child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                this.cardInfo['title'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[400].withOpacity(0.50),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
      ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfflineWorkoutList())
                );
              },
            ),
          ),
    );
  }
}
