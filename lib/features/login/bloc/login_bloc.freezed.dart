// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loginWithVk,
    required TResult Function() loginPageOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loginWithVk,
    TResult? Function()? loginPageOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loginWithVk,
    TResult Function()? loginPageOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithVk value) loginWithVk,
    required TResult Function(_LoginPageOpen value) loginPageOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithVk value)? loginWithVk,
    TResult? Function(_LoginPageOpen value)? loginPageOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithVk value)? loginWithVk,
    TResult Function(_LoginPageOpen value)? loginPageOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loginWithVk,
    required TResult Function() loginPageOpen,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loginWithVk,
    TResult? Function()? loginPageOpen,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loginWithVk,
    TResult Function()? loginPageOpen,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithVk value) loginWithVk,
    required TResult Function(_LoginPageOpen value) loginPageOpen,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithVk value)? loginWithVk,
    TResult? Function(_LoginPageOpen value)? loginPageOpen,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithVk value)? loginWithVk,
    TResult Function(_LoginPageOpen value)? loginPageOpen,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login(
      {required final String email,
      required final String password}) = _$LoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithVkImplCopyWith<$Res> {
  factory _$$LoginWithVkImplCopyWith(
          _$LoginWithVkImpl value, $Res Function(_$LoginWithVkImpl) then) =
      __$$LoginWithVkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithVkImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginWithVkImpl>
    implements _$$LoginWithVkImplCopyWith<$Res> {
  __$$LoginWithVkImplCopyWithImpl(
      _$LoginWithVkImpl _value, $Res Function(_$LoginWithVkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithVkImpl implements _LoginWithVk {
  const _$LoginWithVkImpl();

  @override
  String toString() {
    return 'LoginEvent.loginWithVk()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithVkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loginWithVk,
    required TResult Function() loginPageOpen,
  }) {
    return loginWithVk();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loginWithVk,
    TResult? Function()? loginPageOpen,
  }) {
    return loginWithVk?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loginWithVk,
    TResult Function()? loginPageOpen,
    required TResult orElse(),
  }) {
    if (loginWithVk != null) {
      return loginWithVk();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithVk value) loginWithVk,
    required TResult Function(_LoginPageOpen value) loginPageOpen,
  }) {
    return loginWithVk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithVk value)? loginWithVk,
    TResult? Function(_LoginPageOpen value)? loginPageOpen,
  }) {
    return loginWithVk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithVk value)? loginWithVk,
    TResult Function(_LoginPageOpen value)? loginPageOpen,
    required TResult orElse(),
  }) {
    if (loginWithVk != null) {
      return loginWithVk(this);
    }
    return orElse();
  }
}

abstract class _LoginWithVk implements LoginEvent {
  const factory _LoginWithVk() = _$LoginWithVkImpl;
}

/// @nodoc
abstract class _$$LoginPageOpenImplCopyWith<$Res> {
  factory _$$LoginPageOpenImplCopyWith(
          _$LoginPageOpenImpl value, $Res Function(_$LoginPageOpenImpl) then) =
      __$$LoginPageOpenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPageOpenImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginPageOpenImpl>
    implements _$$LoginPageOpenImplCopyWith<$Res> {
  __$$LoginPageOpenImplCopyWithImpl(
      _$LoginPageOpenImpl _value, $Res Function(_$LoginPageOpenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPageOpenImpl implements _LoginPageOpen {
  const _$LoginPageOpenImpl();

  @override
  String toString() {
    return 'LoginEvent.loginPageOpen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginPageOpenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() loginWithVk,
    required TResult Function() loginPageOpen,
  }) {
    return loginPageOpen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? loginWithVk,
    TResult? Function()? loginPageOpen,
  }) {
    return loginPageOpen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? loginWithVk,
    TResult Function()? loginPageOpen,
    required TResult orElse(),
  }) {
    if (loginPageOpen != null) {
      return loginPageOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithVk value) loginWithVk,
    required TResult Function(_LoginPageOpen value) loginPageOpen,
  }) {
    return loginPageOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithVk value)? loginWithVk,
    TResult? Function(_LoginPageOpen value)? loginPageOpen,
  }) {
    return loginPageOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithVk value)? loginWithVk,
    TResult Function(_LoginPageOpen value)? loginPageOpen,
    required TResult orElse(),
  }) {
    if (loginPageOpen != null) {
      return loginPageOpen(this);
    }
    return orElse();
  }
}

abstract class _LoginPageOpen implements LoginEvent {
  const factory _LoginPageOpen() = _$LoginPageOpenImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logging,
    required TResult Function(User user) logginingSuccessful,
    required TResult Function(String message) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logging,
    TResult? Function(User user)? logginingSuccessful,
    TResult? Function(String message)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logging,
    TResult Function(User user)? logginingSuccessful,
    TResult Function(String message)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState value) initial,
    required TResult Function(_LoggingState value) logging,
    required TResult Function(_LoggingSuccessfulState value)
        logginingSuccessful,
    required TResult Function(_LoggingErrorState value) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState value)? initial,
    TResult? Function(_LoggingState value)? logging,
    TResult? Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult? Function(_LoggingErrorState value)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState value)? initial,
    TResult Function(_LoggingState value)? logging,
    TResult Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult Function(_LoggingErrorState value)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLoginStateImplCopyWith<$Res> {
  factory _$$InitialLoginStateImplCopyWith(_$InitialLoginStateImpl value,
          $Res Function(_$InitialLoginStateImpl) then) =
      __$$InitialLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLoginStateImpl>
    implements _$$InitialLoginStateImplCopyWith<$Res> {
  __$$InitialLoginStateImplCopyWithImpl(_$InitialLoginStateImpl _value,
      $Res Function(_$InitialLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLoginStateImpl implements _InitialLoginState {
  const _$InitialLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logging,
    required TResult Function(User user) logginingSuccessful,
    required TResult Function(String message) loginError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logging,
    TResult? Function(User user)? logginingSuccessful,
    TResult? Function(String message)? loginError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logging,
    TResult Function(User user)? logginingSuccessful,
    TResult Function(String message)? loginError,
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
    required TResult Function(_InitialLoginState value) initial,
    required TResult Function(_LoggingState value) logging,
    required TResult Function(_LoggingSuccessfulState value)
        logginingSuccessful,
    required TResult Function(_LoggingErrorState value) loginError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState value)? initial,
    TResult? Function(_LoggingState value)? logging,
    TResult? Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult? Function(_LoggingErrorState value)? loginError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState value)? initial,
    TResult Function(_LoggingState value)? logging,
    TResult Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult Function(_LoggingErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLoginState implements LoginState {
  const factory _InitialLoginState() = _$InitialLoginStateImpl;
}

/// @nodoc
abstract class _$$LoggingStateImplCopyWith<$Res> {
  factory _$$LoggingStateImplCopyWith(
          _$LoggingStateImpl value, $Res Function(_$LoggingStateImpl) then) =
      __$$LoggingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggingStateImpl>
    implements _$$LoggingStateImplCopyWith<$Res> {
  __$$LoggingStateImplCopyWithImpl(
      _$LoggingStateImpl _value, $Res Function(_$LoggingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingStateImpl implements _LoggingState {
  const _$LoggingStateImpl();

  @override
  String toString() {
    return 'LoginState.logging()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logging,
    required TResult Function(User user) logginingSuccessful,
    required TResult Function(String message) loginError,
  }) {
    return logging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logging,
    TResult? Function(User user)? logginingSuccessful,
    TResult? Function(String message)? loginError,
  }) {
    return logging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logging,
    TResult Function(User user)? logginingSuccessful,
    TResult Function(String message)? loginError,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState value) initial,
    required TResult Function(_LoggingState value) logging,
    required TResult Function(_LoggingSuccessfulState value)
        logginingSuccessful,
    required TResult Function(_LoggingErrorState value) loginError,
  }) {
    return logging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState value)? initial,
    TResult? Function(_LoggingState value)? logging,
    TResult? Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult? Function(_LoggingErrorState value)? loginError,
  }) {
    return logging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState value)? initial,
    TResult Function(_LoggingState value)? logging,
    TResult Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult Function(_LoggingErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging(this);
    }
    return orElse();
  }
}

abstract class _LoggingState implements LoginState {
  const factory _LoggingState() = _$LoggingStateImpl;
}

/// @nodoc
abstract class _$$LoggingSuccessfulStateImplCopyWith<$Res> {
  factory _$$LoggingSuccessfulStateImplCopyWith(
          _$LoggingSuccessfulStateImpl value,
          $Res Function(_$LoggingSuccessfulStateImpl) then) =
      __$$LoggingSuccessfulStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoggingSuccessfulStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggingSuccessfulStateImpl>
    implements _$$LoggingSuccessfulStateImplCopyWith<$Res> {
  __$$LoggingSuccessfulStateImplCopyWithImpl(
      _$LoggingSuccessfulStateImpl _value,
      $Res Function(_$LoggingSuccessfulStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoggingSuccessfulStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoggingSuccessfulStateImpl implements _LoggingSuccessfulState {
  const _$LoggingSuccessfulStateImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.logginingSuccessful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggingSuccessfulStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggingSuccessfulStateImplCopyWith<_$LoggingSuccessfulStateImpl>
      get copyWith => __$$LoggingSuccessfulStateImplCopyWithImpl<
          _$LoggingSuccessfulStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logging,
    required TResult Function(User user) logginingSuccessful,
    required TResult Function(String message) loginError,
  }) {
    return logginingSuccessful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logging,
    TResult? Function(User user)? logginingSuccessful,
    TResult? Function(String message)? loginError,
  }) {
    return logginingSuccessful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logging,
    TResult Function(User user)? logginingSuccessful,
    TResult Function(String message)? loginError,
    required TResult orElse(),
  }) {
    if (logginingSuccessful != null) {
      return logginingSuccessful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState value) initial,
    required TResult Function(_LoggingState value) logging,
    required TResult Function(_LoggingSuccessfulState value)
        logginingSuccessful,
    required TResult Function(_LoggingErrorState value) loginError,
  }) {
    return logginingSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState value)? initial,
    TResult? Function(_LoggingState value)? logging,
    TResult? Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult? Function(_LoggingErrorState value)? loginError,
  }) {
    return logginingSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState value)? initial,
    TResult Function(_LoggingState value)? logging,
    TResult Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult Function(_LoggingErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (logginingSuccessful != null) {
      return logginingSuccessful(this);
    }
    return orElse();
  }
}

abstract class _LoggingSuccessfulState implements LoginState {
  const factory _LoggingSuccessfulState({required final User user}) =
      _$LoggingSuccessfulStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoggingSuccessfulStateImplCopyWith<_$LoggingSuccessfulStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggingErrorStateImplCopyWith<$Res> {
  factory _$$LoggingErrorStateImplCopyWith(_$LoggingErrorStateImpl value,
          $Res Function(_$LoggingErrorStateImpl) then) =
      __$$LoggingErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoggingErrorStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggingErrorStateImpl>
    implements _$$LoggingErrorStateImplCopyWith<$Res> {
  __$$LoggingErrorStateImplCopyWithImpl(_$LoggingErrorStateImpl _value,
      $Res Function(_$LoggingErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoggingErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoggingErrorStateImpl implements _LoggingErrorState {
  const _$LoggingErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggingErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggingErrorStateImplCopyWith<_$LoggingErrorStateImpl> get copyWith =>
      __$$LoggingErrorStateImplCopyWithImpl<_$LoggingErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logging,
    required TResult Function(User user) logginingSuccessful,
    required TResult Function(String message) loginError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logging,
    TResult? Function(User user)? logginingSuccessful,
    TResult? Function(String message)? loginError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logging,
    TResult Function(User user)? logginingSuccessful,
    TResult Function(String message)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState value) initial,
    required TResult Function(_LoggingState value) logging,
    required TResult Function(_LoggingSuccessfulState value)
        logginingSuccessful,
    required TResult Function(_LoggingErrorState value) loginError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState value)? initial,
    TResult? Function(_LoggingState value)? logging,
    TResult? Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult? Function(_LoggingErrorState value)? loginError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState value)? initial,
    TResult Function(_LoggingState value)? logging,
    TResult Function(_LoggingSuccessfulState value)? logginingSuccessful,
    TResult Function(_LoggingErrorState value)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _LoggingErrorState implements LoginState {
  const factory _LoggingErrorState({required final String message}) =
      _$LoggingErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoggingErrorStateImplCopyWith<_$LoggingErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
