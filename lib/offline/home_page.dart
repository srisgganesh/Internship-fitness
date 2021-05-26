import 'package:fitness_flutter/offline/exercises_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => 
  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black87),
      title: Text("Strength and Conditioning",
      style: TextStyle(color: Colors.black87),
      ),
    ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            //buildAppBar(context),
            ExercisesWidget(),
          ],
        ),
      );

  /*SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(     
        title: Text('Strength And Conditioning'),       
        leading: Icon(Icons.menu),
        actions: [
          SizedBox(width: 12),
        ],
      );*/
}