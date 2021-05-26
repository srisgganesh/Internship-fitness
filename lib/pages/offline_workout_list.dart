//import 'package:fitness_flutter/offline/exercises_widget.dart';
import 'package:fitness_flutter/offline/home_page.dart';
//import 'package:fitness_flutter/offline/tryto.dart';
import 'package:flutter/material.dart';

class OfflineWorkoutList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      //backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Offline Videos",
          style: TextStyle(color: Colors.black),        
        ),
      ),    
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[  
            /*Stack(
            children: <Widget>[
              Container(
                height: 275.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image004.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
              ),
              Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top:15 ,left: 22,right: 20,bottom: 1),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Offline Videos',
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),*/
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.stretch,
                      children: <Widget>[
                        InkWell(
                            child: Container(
                            margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                            padding: EdgeInsets.all(10),
                            height: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage('assets/images/s_c.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              //colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                              ),
                              borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Text(
                              "Strength\nAnd\nConditioning",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                ),
                               // textAlign: TextAlign.,
                            ),
                          ),
                          onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => HomePage()));
                                },
                              ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 210,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/upper_body.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Upper\nBody",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 230,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/chest.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Chest",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 280,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/back.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Back",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/cardio.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Cardio",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 270,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/endurance.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Endurance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 240,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/running.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Running",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/yoga.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Yoga",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 4, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/meditation.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Meditation",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),          
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/bodybuilding.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Body\nBuilding",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/lower_body.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Lower Body",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 220,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/arms.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Arms",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 210,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/core.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Core",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/speed.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Speed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/agility.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Agility",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 330,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/fullbody.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Full\nBody",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/mobility.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Mobility",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 8, bottom: 8, top: 5),
                          padding: EdgeInsets.all(10),
                          height: 270,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage('assets/images/breathing.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            ),
                            //gradient: LinearGradient(colors:[Color(0xff17EAD9),Color(0xff41A7E2)]),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "Breathing",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              ),
                             // textAlign: TextAlign.,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }   
}


