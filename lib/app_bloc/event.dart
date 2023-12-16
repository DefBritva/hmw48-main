part of 'bloc.dart';

@Freezed(toJson: false, fromJson: false)
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.addTask({
    required String title,
    required String body,
  }) = _AddTask;

  const factory TaskEvent.doneTask({
    required int len,
    required int id,
    required String title,
    required String body,
    required bool isDone,
  }) = _DoneTask;

  const factory TaskEvent.deleteAllTasks() = _DeleteAllTasks;

  const factory TaskEvent.openTaskPage() = _TaskPageOpened;
}
