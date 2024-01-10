part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.defaultState({required TaskItem task}) =
      _DefaultState;
}
