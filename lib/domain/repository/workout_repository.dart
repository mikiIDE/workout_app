import '../entity/workout_session.dart';

// domain/repository/workout_repository.dart
// domain層：「できること」の約束だけ定義。実装方法は書かない。
abstract class WorkoutRepository {
  Future<void> addWorkoutSession(WorkoutSession session);
  Future<List<WorkoutSession>> fetchWorkoutSessions();
}
