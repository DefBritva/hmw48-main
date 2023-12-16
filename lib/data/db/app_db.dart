import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/widgets.dart' hide Table;
import 'package:hwm48/domain/entities/task_items.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_db.g.dart';

// ... the TodoItems table definition stays the same

@DriftDatabase(tables: [TaskItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<TaskItem>> getAll() async {
    return await select(taskItems).get();
  }

  // Future<TaskItem> get(int id) async {
  //   return await (select(taskItems)..where((tbl) => tbl.id.equals(id)))
  //       .getSingle();
  // }

  Future<bool> updateIsDone(TaskItemsCompanion comp) async {
    final int id = comp.id.value;
    final upd = update(taskItems);
    final rep = await (upd..where((tbl) => tbl.id.equals(id))).replace(comp);
    return rep;
  }

  Future<int> insertTaskItem(TaskItemsCompanion table) async {
    return await into(taskItems).insert(table);
  }

  // Future<int> deleteTaskItem(int id) async {
  //   return await (delete(taskItems)..where((tbl) => tbl.id.equals(id))).go();
  // }

  Future<int> deleteAllTasks() async {
    return await (delete(taskItems)).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;

    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
