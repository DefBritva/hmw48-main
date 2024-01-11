import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hwm48/core/data/db/app_db.dart';
import 'package:hwm48/core/domain/services/task_service.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TaskRepository taskService;
  TasksBloc({required this.taskService}) : super(const TasksState.initial()) {
    on<TasksEvent>((event, emit) async {
      await event.when(
        openTaskPage: () async {
          final data = await taskService.getAll();
          emit(TasksState.loadTasks(tasks: data));
        },
        fetchWelcomeTasks: () async {
          final data = await taskService.fetchData();
          int id = 0;
          for (var task in data) {
            await taskService.addTask(
                id: id, body: task.content, title: task.title);
            id += 1;
          }
          emit(TasksState.loadTasks(tasks: data));
        },
        addTask: (int id, String title, String body) async {
          await taskService.addTask(id: id, title: title, body: body);
        },
        deleteAllTasks: () async {
          await taskService.clear();
          emit(const TasksState.loadTasks(tasks: []));
        },
        deleteAllCompleted: () async {
          await taskService.deleteAllCompleted();
          final tasks = await taskService.getAll();
          emit(TasksState.loadTasks(tasks: tasks));
        },
        doneTask: (int id, String title, String body, bool isDone) async {
          final done = await taskService.doneTask(
              id: id, title: title, content: body, isDone: isDone);

          final tasks = await taskService.getAll();
          emit(TasksState.loadTasks(tasks: tasks));
        },
      );
    });
  }

  // FutureOr<void> _openTaskPage(Emitter<TaskState> emit) async {
  //   final data = await taskService.getAll();
  //   emit(TaskState.loadTasks(tasks: data));
  // }

  // FutureOr<void> _fetchWelcomeTasks(Emitter<TaskState> emit) async {
  //   final data = await taskService.fetchData();
  //   int id = 0;
  //   for (var task in data) {
  //     await taskService.addTask(id: id, body: task.content, title: task.title);
  //     id += 1;
  //   }
  //   emit(TaskState.loadTasks(tasks: data));
  // }
}
