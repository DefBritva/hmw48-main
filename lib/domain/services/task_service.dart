import 'package:drift/drift.dart';
import 'package:hwm48/data/db/app_db.dart';

abstract class TaskService {
  Future<List<TaskItem>> getAll();
  Future<bool> doneTask({required TaskItemsCompanion comp});
  Future<int> addTask({required String title, required String body});
  Future<int> clear();
  Future<void> dispose();
}

class TaskServiceImpl implements TaskService {
  final _db = AppDatabase();
  @override
  Future<int> addTask({required String title, required String body}) async {
    final result = await _db.insertTaskItem(TaskItemsCompanion(
        title: Value(title), content: Value(body), isDone: const Value(false)));
    return result;
  }

  @override
  Future<bool> doneTask({required TaskItemsCompanion comp}) async {
    return await _db.updateIsDone(comp);
  }

  @override
  Future<List<TaskItem>> getAll() async {
    final result = await _db.getAll();
    return result;
  }

  @override
  Future<int> clear() async {
    final result = await _db.deleteAllTasks();
    return result;
  }

  @override
  Future<void> dispose() async {
    await _db.close();
  }
}
