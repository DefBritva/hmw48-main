import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hwm48/core/data/db/app_db.dart';
import 'package:hwm48/core/domain/services/task_service.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskReposImpl taskReposImpl;
  TaskBloc(this.taskReposImpl) : super(const _Initial()) {
    on<TaskEvent>((event, emit) async {
      await event.when(openTask: (id) async {
        final task = await taskReposImpl.getTask(id: id);
        emit(TaskState.defaultState(task: task));
      });
    });
  }
}
