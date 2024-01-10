import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:hwm48/core/data/db/app_db.dart';
import 'package:hwm48/core/domain/entities/task.dart';

abstract class TaskRepository {
  Future<List<TaskItem>> fetchData();

  Future<int> addTask({
    required int id,
    required String title,
    required String body,
  });

  Future<bool> doneTask(
      {required int id,
      required String title,
      required String content,
      required bool isDone});

  Future<List<TaskItem>> getAll();

  Future<TaskItem> getTask({required int id});

  Future<int> clear();

  Future<int> deleteAllCompleted();

  Future<int> getId();
  Future<void> dispose();
}

final class TaskReposImpl implements TaskRepository {
  final _db = AppDatabase();
  @override
  Future<List<TaskItem>> fetchData() async {
    try {
      final dio = Dio();
      var response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      final data = response.data as List;
      dio.close();
      final tasks = data.map((e) => Task.fromJson(e)).toList();
      int id = 0;
      final listTaskItems = <TaskItem>[];
      for (var task in tasks) {
        final taskItem = TaskItem(
          id: id,
          title: task.title,
          content: task.body,
          isDone: false,
        );
        listTaskItems.add(taskItem);
        id += 1;
      }
      return listTaskItems;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
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

  @override
  Future<bool> doneTask(
      {required int id,
      required String title,
      required String content,
      required bool isDone}) async {
    final comp = TaskItemsCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      isDone: Value(isDone),
    );
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
  Future<int> deleteAllCompleted() async {
    return await _db.deleteAllCompleted();
  }

  @override
  Future<void> dispose() async {
    await _db.close();
  }

  @override
  Future<int> getId() async {
    final tasks = await _db.getAll();
    return tasks.length;
  }

  @override
  Future<TaskItem> getTask({required int id}) async {
    return await _db.get(id);
  }
}














// import 'package:drift/drift.dart';
// import 'package:hwm48/core/data/db/app_db.dart';
//
// class TaskService {
//   final _db = AppDatabase();
//   Future<int> addTask(
//       {required int id, required String title, required String body}) async {
//     final result = await _db.insertTaskItem(
//       TaskItemsCompanion(
//         id: Value(id),
//         title: Value(title),
//         content: Value(body),
//         isDone: const Value(false),
//       ),
//     );
//     return result;
//   }

//   Future<bool> doneTask({required TaskItemsCompanion comp}) async {
//     return await _db.updateIsDone(comp);
//   }

//   Future<List<TaskItem>> getAll() async {
//     final result = await _db.getAll();
//     return result;
//   }

//   Future<int> clear() async {
//     final result = await _db.deleteAllTasks();
//     return result;
//   }

//   Future<int> deleteAllCompleted() async {
//     return await _db.deleteAllCompleted();
//   }

//   Future<void> dispose() async {
//     await _db.close();
//   }
// }
