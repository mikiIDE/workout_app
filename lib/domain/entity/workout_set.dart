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
  // Data層へ渡すためのJSON変換（なぜEntityに書く：変換責務はデータ自身が持つ）
  Map<String, dynamic> toJson() => {
    'id': id,
    'exerciseName': exerciseName,
    'weight': weight,
    'reps': reps,
    'incline': incline,
    'speed': speed,
    'durationSecs': durationSecs,
    'createdAt': createdAt.toIso8601String(),
  };
  // JSONからオブジェクトを作るときは factory を使う
  factory WorkoutSet.fromJson(Map<String, dynamic> json) => WorkoutSet(
    id: json['id'],
    exerciseName: json['exerciseName'],
    weight: json['weight'],
    reps: json['reps'],
    incline: json['incline'],
    speed: json['speed'],
    durationSecs: json['durationSecs'],
    createdAt: DateTime.parse(json['createdAt']),
  );
}
