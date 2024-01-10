// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = _InitialTaskState;
  const factory TasksState.loadTasks({required List<TaskItem> tasks}) =
      _LoadTasksState;
}
