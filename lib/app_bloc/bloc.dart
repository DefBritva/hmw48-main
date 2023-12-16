import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hwm48/data/db/app_db.dart';
import 'package:hwm48/domain/services/task_service.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskService taskService;
  TaskBloc(this.taskService) : super(const TaskState.initial()) {
    on<TaskEvent>((event, emit) async {
      await event.when(
        addTask: (title, body) async {
          await taskService.addTask(title: title, body: body);
        },
        doneTask: (len, id, title, body, isDone) async {
          final lastIndex = len - 1;
          final selectedIndex = lastIndex - id;
          final comp = TaskItemsCompanion(
            id: Value(selectedIndex),
            title: Value(title),
            content: Value(body),
            isDone: Value(isDone),
          );
          final done = await taskService.doneTask(comp: comp);
          debugPrint(done.toString());
          final tasks = await taskService.getAll();
          emit(TaskState.loadTasks(tasks: tasks));
        },
        openTaskPage: () async {
          final tasks = await taskService.getAll();
          emit(TaskState.loadTasks(tasks: tasks));
        },
        deleteAllTasks: () async {
          await taskService.clear();
          emit(const TaskState.loadTasks(tasks: []));
        },
      );
    });
  }
}
