import 'package:fitness_flutter/components/fitness_challenge.dart';
import 'package:fitness_flutter/components/header.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/section.dart';
import 'package:fitness_flutter/components/image_card_with_internal.dart';
import 'package:fitness_flutter/components/main_card_programs.dart';
import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/components/user_tip.dart';
import 'package:fitness_flutter/components/offline_videos.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'Individual',
      time: '5 min',
      difficult: 'For All',
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'Organization',
      time: '10 min',
      difficult: 'For All',
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'Group',
      time: '25 min',
      difficult: 'For All',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'Home',
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                 // title: 'Fat burning',
                  horizontalList: this.generateList(context),
                ),
                OfflineVideos(),
              /*  Section(
                   horizontalList: this.generateList(context),
                  title: 'Offline Videos',
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Offline \nVideos',
                      duration: '7 min',
                    ),
                  ],
                ), */
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                  ),
                  child: Column(
                    children: <Widget>[
                      Section(
                        title: 'Top Trainers',
                        horizontalList: <Widget>[
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Trainer 1',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Trainer 2',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Trainer 3',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Trainer 4',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Trainer 5',
                          ),
                        ],
                      ),
                      Section(
                        horizontalList: <Widget>[
                          fitness_challenge(),
                          fitness_challenge(),
                          fitness_challenge(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
