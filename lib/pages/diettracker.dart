import 'package:flutter/material.dart';

class DietTracker extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Food"),
      ),
      body: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 1",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),        
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 2",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),       
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 3",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 4",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),   
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 5",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 6",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 7",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 8",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 9",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Add food item",
                      labelText: "Item 10",
                      labelStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),                    fillColor: Colors.white30,
                    filled: true
                    ),
                obscureText: false,         
                    ),  
                ],
                ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('SAVE'),
        ),
    );
  }
}
