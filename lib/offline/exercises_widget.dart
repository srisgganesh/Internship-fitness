import 'package:fitness_flutter/data/exercise_sets.dart';
import 'package:fitness_flutter/models/exercise_set.dart';
import 'package:fitness_flutter/offline/exercise_set_widget.dart';
import 'package:flutter/material.dart';

class ExercisesWidget extends StatefulWidget {
  @override
  _ExercisesWidgetState createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {
  ExerciseType selectedType = ExerciseType.low;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(12),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 210,
                child: Container(
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(20.0),
                     bottomRight: Radius.circular(20.0),
                     topLeft: Radius.circular(20.0),
                     topRight: Radius.circular(20.0),
                   ),
                   image: DecorationImage(
                     image: AssetImage("assets/images/s_c.jpg"),
                  fit: BoxFit.cover
                  ),
                ),
                ),
                ),
                /*Text(
                'Exercise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),*/
              SizedBox(height: 7),
              buildDifficultyLevel(),
              SizedBox(height: 7),
              buildWorkouts(),
            ],
          ),
        ),
      );

  Widget buildWorkouts() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: exerciseSets
              .where((element) => element.exerciseType == selectedType)
              .map(
                (exerciseSet) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
              )
              .toList(),
        ),
      );

  Widget buildDifficultyLevel() => Row(
        children: ExerciseType.values.map(
          (type) {
            final name = getExerciseName(type);
            final fontWeight =
                selectedType == type ? FontWeight.w900 : FontWeight.w100;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => selectedType = type),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType);
    final hasNext = selectedIndex < ExerciseType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity < 0 && hasNext) {
        final nextType = ExerciseType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity > 0 && hasPrevious) {
        final previousType = ExerciseType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    }
   );
  }
}
