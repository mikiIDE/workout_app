import '../domain/repository/workout_repository.dart';
import '../domain/entity/workout_session.dart';

// application層：「何をするか」を定義する。UIからもDBからも独立。
// ① クラスの宣言
class FetchWorkoutSessionsUsecase {
  // ② 使うRepositoryと箱を宣言（変更不可）
  final WorkoutRepository _repository;

  // ③ 作るときのルール（コンストラクタ）
  FetchWorkoutSessionsUsecase(this._repository);

  // ④ 何度でも呼べるメソッド。WorkoutSession型のデータを受け取る
  Future<List<WorkoutSession>> execute() async {
    // ⑤ 箱のRepositoryのメソッドを実行
    return await _repository.fetchWorkoutSessions();
  }
}
