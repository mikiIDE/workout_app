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
  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date.toIso8601String(),
    'sets': sets.map((s) => s.toJson()).toList(),
  };

  factory WorkoutSession.fromJson(Map<String, dynamic> json) => WorkoutSession(
    id: json['id'],
    date: DateTime.parse(json['date']),
    sets: (json['sets'] as List).map((s) => WorkoutSet.fromJson(s)).toList(),
  );
}
