part of 'bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.doneTask({
    required int id,
    required String title,
    required String body,
    required bool isDone,
  }) = _DoneTask;

  const factory TasksEvent.openTaskPage() = _TaskPageOpened;
  const factory TasksEvent.fetchWelcomeTasks() = _FetchWelcomePage;

  const factory TasksEvent.addTask({
    required int id,
    required String title,
    required String body,
  }) = _AddTask;

  const factory TasksEvent.deleteAllTasks() = _DeleteAllTasks;

  const factory TasksEvent.deleteAllCompleted() = _DeleteAllCompleted;
}
