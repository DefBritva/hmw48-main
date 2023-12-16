import 'package:drift/drift.dart';
import 'package:hwm48/core/data/db/app_db.dart';

class TaskService {
  final _db = AppDatabase();
  Future<int> addTask(
      {required int id, required String title, required String body}) async {
    final result = await _db.insertTaskItem(
      TaskItemsCompanion(
        id: Value(id),
        title: Value(title),
        content: Value(body),
        isDone: const Value(false),
      ),
    );
    return result;
  }

  Future<bool> doneTask({required TaskItemsCompanion comp}) async {
    return await _db.updateIsDone(comp);
  }

  Future<List<TaskItem>> getAll() async {
    final result = await _db.getAll();
    return result;
  }

  Future<int> clear() async {
    final result = await _db.deleteAllTasks();
    return result;
  }

  Future<int> deleteAllCompleted() async {
    return await _db.deleteAllCompleted();
  }

  Future<void> dispose() async {
    await _db.close();
  }
}
