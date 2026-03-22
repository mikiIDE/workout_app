import 'workout_set.dart';

// domain/entity/workout_session.dart
// Entity層：1日分のトレーニングをまとめるデータ構造。UIやDBに依存しない。
class WorkoutSession {
  final String id;
  final DateTime date;
  final List<WorkoutSet> sets;

  const WorkoutSession({
    required this.id,
    required this.date,
    required this.sets,
  });
}
