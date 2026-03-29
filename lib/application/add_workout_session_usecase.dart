import '../domain/repository/workout_repository.dart';
import '../domain/entity/workout_session.dart';

// application層：「何をするか」を定義する。UIからもDBからも独立。
// ① クラスの宣言
class AddWorkoutSessionUseCase {
  // ② 使うRepositoryと箱を宣言（変更不可）
  final WorkoutRepository _repository;

  // ③ 作るときのルール（コンストラクタ）
  AddWorkoutSessionUseCase(this._repository);

  // ④ 何度でも呼べるメソッド。WorkoutSession型のデータを受け取る
  Future<void> execute(WorkoutSession session) async {
    // ⑤ 箱のRepositoryのメソッドを、sessionを渡して実行
    await _repository.addWorkoutSession(session);
  }
}
