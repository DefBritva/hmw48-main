import 'package:drift/drift.dart';

class TaskItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength()();
  TextColumn get content => text()();
  BoolColumn get isDone => boolean().named('is_done')();
}
