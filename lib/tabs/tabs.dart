import 'package:flutter/material.dart';
import 'package:fitness_flutter/tabs/Diet.dart';
import 'package:fitness_flutter/tabs/Programs.dart';
import 'package:fitness_flutter/tabs/Results.dart';
import 'package:fitness_flutter/tabs/Settings.dart';
import 'package:fitness_flutter/tabs/Sessions.dart';


class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Programs(),
            Diet(),
            Sessions(),
            Results(),
            // ignore: missing_required_param
            Settings(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.explicit, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.lock_clock, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.insert_chart, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.settings, size: 26.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black12,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}