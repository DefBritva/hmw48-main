// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bloc.dart';

@Freezed(toJson: false, fromJson: false)
class TaskState with _$TaskState {
  const factory TaskState.initial() = _InitialTaskState;
  const factory TaskState.loadTasks({required List<TaskItem> tasks}) =
      _LoadTasksState;
}
