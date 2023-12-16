// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) addTask,
    required TResult Function(
            int len, int id, String title, String body, bool isDone)
        doneTask,
    required TResult Function() deleteAllTasks,
    required TResult Function() openTaskPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? addTask,
    TResult? Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult? Function()? deleteAllTasks,
    TResult? Function()? openTaskPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? addTask,
    TResult Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult Function()? deleteAllTasks,
    TResult Function()? openTaskPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DoneTask value) doneTask,
    required TResult Function(_DeleteAllTasks value) deleteAllTasks,
    required TResult Function(_TaskPageOpened value) openTaskPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DoneTask value)? doneTask,
    TResult? Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult? Function(_TaskPageOpened value)? openTaskPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DoneTask value)? doneTask,
    TResult Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult Function(_TaskPageOpened value)? openTaskPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$AddTaskImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskImpl implements _AddTask {
  const _$AddTaskImpl({required this.title, required this.body});

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'TaskEvent.addTask(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) addTask,
    required TResult Function(
            int len, int id, String title, String body, bool isDone)
        doneTask,
    required TResult Function() deleteAllTasks,
    required TResult Function() openTaskPage,
  }) {
    return addTask(title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? addTask,
    TResult? Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult? Function()? deleteAllTasks,
    TResult? Function()? openTaskPage,
  }) {
    return addTask?.call(title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? addTask,
    TResult Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult Function()? deleteAllTasks,
    TResult Function()? openTaskPage,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DoneTask value) doneTask,
    required TResult Function(_DeleteAllTasks value) deleteAllTasks,
    required TResult Function(_TaskPageOpened value) openTaskPage,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DoneTask value)? doneTask,
    TResult? Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult? Function(_TaskPageOpened value)? openTaskPage,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DoneTask value)? doneTask,
    TResult Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult Function(_TaskPageOpened value)? openTaskPage,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TaskEvent {
  const factory _AddTask(
      {required final String title,
      required final String body}) = _$AddTaskImpl;

  String get title;
  String get body;
  @JsonKey(ignore: true)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneTaskImplCopyWith<$Res> {
  factory _$$DoneTaskImplCopyWith(
          _$DoneTaskImpl value, $Res Function(_$DoneTaskImpl) then) =
      __$$DoneTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int len, int id, String title, String body, bool isDone});
}

/// @nodoc
class __$$DoneTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DoneTaskImpl>
    implements _$$DoneTaskImplCopyWith<$Res> {
  __$$DoneTaskImplCopyWithImpl(
      _$DoneTaskImpl _value, $Res Function(_$DoneTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? len = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? isDone = null,
  }) {
    return _then(_$DoneTaskImpl(
      len: null == len
          ? _value.len
          : len // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DoneTaskImpl implements _DoneTask {
  const _$DoneTaskImpl(
      {required this.len,
      required this.id,
      required this.title,
      required this.body,
      required this.isDone});

  @override
  final int len;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TaskEvent.doneTask(len: $len, id: $id, title: $title, body: $body, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneTaskImpl &&
            (identical(other.len, len) || other.len == len) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, len, id, title, body, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneTaskImplCopyWith<_$DoneTaskImpl> get copyWith =>
      __$$DoneTaskImplCopyWithImpl<_$DoneTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) addTask,
    required TResult Function(
            int len, int id, String title, String body, bool isDone)
        doneTask,
    required TResult Function() deleteAllTasks,
    required TResult Function() openTaskPage,
  }) {
    return doneTask(len, id, title, body, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? addTask,
    TResult? Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult? Function()? deleteAllTasks,
    TResult? Function()? openTaskPage,
  }) {
    return doneTask?.call(len, id, title, body, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? addTask,
    TResult Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult Function()? deleteAllTasks,
    TResult Function()? openTaskPage,
    required TResult orElse(),
  }) {
    if (doneTask != null) {
      return doneTask(len, id, title, body, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DoneTask value) doneTask,
    required TResult Function(_DeleteAllTasks value) deleteAllTasks,
    required TResult Function(_TaskPageOpened value) openTaskPage,
  }) {
    return doneTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DoneTask value)? doneTask,
    TResult? Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult? Function(_TaskPageOpened value)? openTaskPage,
  }) {
    return doneTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DoneTask value)? doneTask,
    TResult Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult Function(_TaskPageOpened value)? openTaskPage,
    required TResult orElse(),
  }) {
    if (doneTask != null) {
      return doneTask(this);
    }
    return orElse();
  }
}

abstract class _DoneTask implements TaskEvent {
  const factory _DoneTask(
      {required final int len,
      required final int id,
      required final String title,
      required final String body,
      required final bool isDone}) = _$DoneTaskImpl;

  int get len;
  int get id;
  String get title;
  String get body;
  bool get isDone;
  @JsonKey(ignore: true)
  _$$DoneTaskImplCopyWith<_$DoneTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllTasksImplCopyWith<$Res> {
  factory _$$DeleteAllTasksImplCopyWith(_$DeleteAllTasksImpl value,
          $Res Function(_$DeleteAllTasksImpl) then) =
      __$$DeleteAllTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteAllTasksImpl>
    implements _$$DeleteAllTasksImplCopyWith<$Res> {
  __$$DeleteAllTasksImplCopyWithImpl(
      _$DeleteAllTasksImpl _value, $Res Function(_$DeleteAllTasksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllTasksImpl implements _DeleteAllTasks {
  const _$DeleteAllTasksImpl();

  @override
  String toString() {
    return 'TaskEvent.deleteAllTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAllTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) addTask,
    required TResult Function(
            int len, int id, String title, String body, bool isDone)
        doneTask,
    required TResult Function() deleteAllTasks,
    required TResult Function() openTaskPage,
  }) {
    return deleteAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? addTask,
    TResult? Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult? Function()? deleteAllTasks,
    TResult? Function()? openTaskPage,
  }) {
    return deleteAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? addTask,
    TResult Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult Function()? deleteAllTasks,
    TResult Function()? openTaskPage,
    required TResult orElse(),
  }) {
    if (deleteAllTasks != null) {
      return deleteAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DoneTask value) doneTask,
    required TResult Function(_DeleteAllTasks value) deleteAllTasks,
    required TResult Function(_TaskPageOpened value) openTaskPage,
  }) {
    return deleteAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DoneTask value)? doneTask,
    TResult? Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult? Function(_TaskPageOpened value)? openTaskPage,
  }) {
    return deleteAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DoneTask value)? doneTask,
    TResult Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult Function(_TaskPageOpened value)? openTaskPage,
    required TResult orElse(),
  }) {
    if (deleteAllTasks != null) {
      return deleteAllTasks(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllTasks implements TaskEvent {
  const factory _DeleteAllTasks() = _$DeleteAllTasksImpl;
}

/// @nodoc
abstract class _$$TaskPageOpenedImplCopyWith<$Res> {
  factory _$$TaskPageOpenedImplCopyWith(_$TaskPageOpenedImpl value,
          $Res Function(_$TaskPageOpenedImpl) then) =
      __$$TaskPageOpenedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageOpenedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$TaskPageOpenedImpl>
    implements _$$TaskPageOpenedImplCopyWith<$Res> {
  __$$TaskPageOpenedImplCopyWithImpl(
      _$TaskPageOpenedImpl _value, $Res Function(_$TaskPageOpenedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPageOpenedImpl implements _TaskPageOpened {
  const _$TaskPageOpenedImpl();

  @override
  String toString() {
    return 'TaskEvent.openTaskPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskPageOpenedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) addTask,
    required TResult Function(
            int len, int id, String title, String body, bool isDone)
        doneTask,
    required TResult Function() deleteAllTasks,
    required TResult Function() openTaskPage,
  }) {
    return openTaskPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? addTask,
    TResult? Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult? Function()? deleteAllTasks,
    TResult? Function()? openTaskPage,
  }) {
    return openTaskPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? addTask,
    TResult Function(int len, int id, String title, String body, bool isDone)?
        doneTask,
    TResult Function()? deleteAllTasks,
    TResult Function()? openTaskPage,
    required TResult orElse(),
  }) {
    if (openTaskPage != null) {
      return openTaskPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DoneTask value) doneTask,
    required TResult Function(_DeleteAllTasks value) deleteAllTasks,
    required TResult Function(_TaskPageOpened value) openTaskPage,
  }) {
    return openTaskPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DoneTask value)? doneTask,
    TResult? Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult? Function(_TaskPageOpened value)? openTaskPage,
  }) {
    return openTaskPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DoneTask value)? doneTask,
    TResult Function(_DeleteAllTasks value)? deleteAllTasks,
    TResult Function(_TaskPageOpened value)? openTaskPage,
    required TResult orElse(),
  }) {
    if (openTaskPage != null) {
      return openTaskPage(this);
    }
    return orElse();
  }
}

abstract class _TaskPageOpened implements TaskEvent {
  const factory _TaskPageOpened() = _$TaskPageOpenedImpl;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskItem> tasks) loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskItem> tasks)? loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskItem> tasks)? loadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskState value) initial,
    required TResult Function(_LoadTasksState value) loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskState value)? initial,
    TResult? Function(_LoadTasksState value)? loadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskState value)? initial,
    TResult Function(_LoadTasksState value)? loadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialTaskStateImplCopyWith<$Res> {
  factory _$$InitialTaskStateImplCopyWith(_$InitialTaskStateImpl value,
          $Res Function(_$InitialTaskStateImpl) then) =
      __$$InitialTaskStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialTaskStateImpl>
    implements _$$InitialTaskStateImplCopyWith<$Res> {
  __$$InitialTaskStateImplCopyWithImpl(_$InitialTaskStateImpl _value,
      $Res Function(_$InitialTaskStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialTaskStateImpl implements _InitialTaskState {
  const _$InitialTaskStateImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialTaskStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskItem> tasks) loadTasks,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskItem> tasks)? loadTasks,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskItem> tasks)? loadTasks,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskState value) initial,
    required TResult Function(_LoadTasksState value) loadTasks,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskState value)? initial,
    TResult? Function(_LoadTasksState value)? loadTasks,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskState value)? initial,
    TResult Function(_LoadTasksState value)? loadTasks,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTaskState implements TaskState {
  const factory _InitialTaskState() = _$InitialTaskStateImpl;
}

/// @nodoc
abstract class _$$LoadTasksStateImplCopyWith<$Res> {
  factory _$$LoadTasksStateImplCopyWith(_$LoadTasksStateImpl value,
          $Res Function(_$LoadTasksStateImpl) then) =
      __$$LoadTasksStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskItem> tasks});
}

/// @nodoc
class __$$LoadTasksStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadTasksStateImpl>
    implements _$$LoadTasksStateImplCopyWith<$Res> {
  __$$LoadTasksStateImplCopyWithImpl(
      _$LoadTasksStateImpl _value, $Res Function(_$LoadTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadTasksStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItem>,
    ));
  }
}

/// @nodoc

class _$LoadTasksStateImpl implements _LoadTasksState {
  const _$LoadTasksStateImpl({required final List<TaskItem> tasks})
      : _tasks = tasks;

  final List<TaskItem> _tasks;
  @override
  List<TaskItem> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.loadTasks(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTasksStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTasksStateImplCopyWith<_$LoadTasksStateImpl> get copyWith =>
      __$$LoadTasksStateImplCopyWithImpl<_$LoadTasksStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskItem> tasks) loadTasks,
  }) {
    return loadTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskItem> tasks)? loadTasks,
  }) {
    return loadTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskItem> tasks)? loadTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskState value) initial,
    required TResult Function(_LoadTasksState value) loadTasks,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTaskState value)? initial,
    TResult? Function(_LoadTasksState value)? loadTasks,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskState value)? initial,
    TResult Function(_LoadTasksState value)? loadTasks,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(this);
    }
    return orElse();
  }
}

abstract class _LoadTasksState implements TaskState {
  const factory _LoadTasksState({required final List<TaskItem> tasks}) =
      _$LoadTasksStateImpl;

  List<TaskItem> get tasks;
  @JsonKey(ignore: true)
  _$$LoadTasksStateImplCopyWith<_$LoadTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
