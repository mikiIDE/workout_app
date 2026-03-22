// domain/entity/workout_set.dart
// Entity層：アプリの核となるデータ構造。UIやDBに依存しない。
class WorkoutSet {
  final String id;
  final String exerciseName;
  final DateTime createdAt;

  // 筋トレ系（任意）
  final double? weight; // 重量 kg
  final int? reps; // 回数

  // 有酸素系（任意）
  final double? incline; // 傾斜 %
  final double? speed; // 速度 km/h
  final int? durationSecs; // 時間（秒）

  const WorkoutSet({
    required this.id,
    required this.exerciseName,
    required this.createdAt,
    this.weight,
    this.reps,
    this.incline,
    this.speed,
    this.durationSecs,
  });
}
