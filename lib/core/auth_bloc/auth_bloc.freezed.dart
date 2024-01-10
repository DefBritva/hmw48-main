// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_UserLogOut value) userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserIsLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_UserLogOut value)? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_UserLogOut value)? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserIsLoggedImplCopyWith<$Res> {
  factory _$$UserIsLoggedImplCopyWith(
          _$UserIsLoggedImpl value, $Res Function(_$UserIsLoggedImpl) then) =
      __$$UserIsLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserIsLoggedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserIsLoggedImpl>
    implements _$$UserIsLoggedImplCopyWith<$Res> {
  __$$UserIsLoggedImplCopyWithImpl(
      _$UserIsLoggedImpl _value, $Res Function(_$UserIsLoggedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserIsLoggedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserIsLoggedImpl implements _UserIsLogged {
  const _$UserIsLoggedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.userLogged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsLoggedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIsLoggedImplCopyWith<_$UserIsLoggedImpl> get copyWith =>
      __$$UserIsLoggedImplCopyWithImpl<_$UserIsLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() userLogout,
  }) {
    return userLogged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? userLogout,
  }) {
    return userLogged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (userLogged != null) {
      return userLogged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_UserLogOut value) userLogout,
  }) {
    return userLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserIsLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_UserLogOut value)? userLogout,
  }) {
    return userLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_UserLogOut value)? userLogout,
    required TResult orElse(),
  }) {
    if (userLogged != null) {
      return userLogged(this);
    }
    return orElse();
  }
}

abstract class _UserIsLogged implements AuthEvent {
  const factory _UserIsLogged({required final User user}) = _$UserIsLoggedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserIsLoggedImplCopyWith<_$UserIsLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserLoggedImplCopyWith<$Res> {
  factory _$$CheckUserLoggedImplCopyWith(_$CheckUserLoggedImpl value,
          $Res Function(_$CheckUserLoggedImpl) then) =
      __$$CheckUserLoggedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserLoggedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserLoggedImpl>
    implements _$$CheckUserLoggedImplCopyWith<$Res> {
  __$$CheckUserLoggedImplCopyWithImpl(
      _$CheckUserLoggedImpl _value, $Res Function(_$CheckUserLoggedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserLoggedImpl implements _CheckUserLogged {
  const _$CheckUserLoggedImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUserLogged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserLoggedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() userLogout,
  }) {
    return checkUserLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? userLogout,
  }) {
    return checkUserLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_UserLogOut value) userLogout,
  }) {
    return checkUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserIsLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_UserLogOut value)? userLogout,
  }) {
    return checkUserLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_UserLogOut value)? userLogout,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(this);
    }
    return orElse();
  }
}

abstract class _CheckUserLogged implements AuthEvent {
  const factory _CheckUserLogged() = _$CheckUserLoggedImpl;
}

/// @nodoc
abstract class _$$UserLogOutImplCopyWith<$Res> {
  factory _$$UserLogOutImplCopyWith(
          _$UserLogOutImpl value, $Res Function(_$UserLogOutImpl) then) =
      __$$UserLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLogOutImpl>
    implements _$$UserLogOutImplCopyWith<$Res> {
  __$$UserLogOutImplCopyWithImpl(
      _$UserLogOutImpl _value, $Res Function(_$UserLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLogOutImpl implements _UserLogOut {
  const _$UserLogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.userLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() userLogout,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? userLogout,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_UserLogOut value) userLogout,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserIsLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_UserLogOut value)? userLogout,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_UserLogOut value)? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _UserLogOut implements AuthEvent {
  const factory _UserLogOut() = _$UserLogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userIsLogged,
    required TResult Function(User user) userIsLoggedFirstTime,
    required TResult Function() userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userIsLogged,
    TResult? Function(User user)? userIsLoggedFirstTime,
    TResult? Function()? userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userIsLogged,
    TResult Function(User user)? userIsLoggedFirstTime,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsLoggedFirstTimeState value)
        userIsLoggedFirstTime,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userIsLogged,
    required TResult Function(User user) userIsLoggedFirstTime,
    required TResult Function() userIsNotLogged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userIsLogged,
    TResult? Function(User user)? userIsLoggedFirstTime,
    TResult? Function()? userIsNotLogged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userIsLogged,
    TResult Function(User user)? userIsLoggedFirstTime,
    TResult Function()? userIsNotLogged,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsLoggedFirstTimeState value)
        userIsLoggedFirstTime,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$UserIsLoggedStateImplCopyWith<$Res> {
  factory _$$UserIsLoggedStateImplCopyWith(_$UserIsLoggedStateImpl value,
          $Res Function(_$UserIsLoggedStateImpl) then) =
      __$$UserIsLoggedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserIsLoggedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserIsLoggedStateImpl>
    implements _$$UserIsLoggedStateImplCopyWith<$Res> {
  __$$UserIsLoggedStateImplCopyWithImpl(_$UserIsLoggedStateImpl _value,
      $Res Function(_$UserIsLoggedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserIsLoggedStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserIsLoggedStateImpl extends _UserIsLoggedState {
  const _$UserIsLoggedStateImpl({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.userIsLogged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsLoggedStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIsLoggedStateImplCopyWith<_$UserIsLoggedStateImpl> get copyWith =>
      __$$UserIsLoggedStateImplCopyWithImpl<_$UserIsLoggedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userIsLogged,
    required TResult Function(User user) userIsLoggedFirstTime,
    required TResult Function() userIsNotLogged,
  }) {
    return userIsLogged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userIsLogged,
    TResult? Function(User user)? userIsLoggedFirstTime,
    TResult? Function()? userIsNotLogged,
  }) {
    return userIsLogged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userIsLogged,
    TResult Function(User user)? userIsLoggedFirstTime,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLogged != null) {
      return userIsLogged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsLoggedFirstTimeState value)
        userIsLoggedFirstTime,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return userIsLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return userIsLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLogged != null) {
      return userIsLogged(this);
    }
    return orElse();
  }
}

abstract class _UserIsLoggedState extends AuthState {
  const factory _UserIsLoggedState({required final User user}) =
      _$UserIsLoggedStateImpl;
  const _UserIsLoggedState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$UserIsLoggedStateImplCopyWith<_$UserIsLoggedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIsLoggedFirstTimeStateImplCopyWith<$Res> {
  factory _$$UserIsLoggedFirstTimeStateImplCopyWith(
          _$UserIsLoggedFirstTimeStateImpl value,
          $Res Function(_$UserIsLoggedFirstTimeStateImpl) then) =
      __$$UserIsLoggedFirstTimeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserIsLoggedFirstTimeStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserIsLoggedFirstTimeStateImpl>
    implements _$$UserIsLoggedFirstTimeStateImplCopyWith<$Res> {
  __$$UserIsLoggedFirstTimeStateImplCopyWithImpl(
      _$UserIsLoggedFirstTimeStateImpl _value,
      $Res Function(_$UserIsLoggedFirstTimeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserIsLoggedFirstTimeStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserIsLoggedFirstTimeStateImpl extends _UserIsLoggedFirstTimeState {
  const _$UserIsLoggedFirstTimeStateImpl({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.userIsLoggedFirstTime(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsLoggedFirstTimeStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIsLoggedFirstTimeStateImplCopyWith<_$UserIsLoggedFirstTimeStateImpl>
      get copyWith => __$$UserIsLoggedFirstTimeStateImplCopyWithImpl<
          _$UserIsLoggedFirstTimeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userIsLogged,
    required TResult Function(User user) userIsLoggedFirstTime,
    required TResult Function() userIsNotLogged,
  }) {
    return userIsLoggedFirstTime(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userIsLogged,
    TResult? Function(User user)? userIsLoggedFirstTime,
    TResult? Function()? userIsNotLogged,
  }) {
    return userIsLoggedFirstTime?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userIsLogged,
    TResult Function(User user)? userIsLoggedFirstTime,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLoggedFirstTime != null) {
      return userIsLoggedFirstTime(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsLoggedFirstTimeState value)
        userIsLoggedFirstTime,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return userIsLoggedFirstTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return userIsLoggedFirstTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLoggedFirstTime != null) {
      return userIsLoggedFirstTime(this);
    }
    return orElse();
  }
}

abstract class _UserIsLoggedFirstTimeState extends AuthState {
  const factory _UserIsLoggedFirstTimeState({required final User user}) =
      _$UserIsLoggedFirstTimeStateImpl;
  const _UserIsLoggedFirstTimeState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$UserIsLoggedFirstTimeStateImplCopyWith<_$UserIsLoggedFirstTimeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIsNotLoggedStateImplCopyWith<$Res> {
  factory _$$UserIsNotLoggedStateImplCopyWith(_$UserIsNotLoggedStateImpl value,
          $Res Function(_$UserIsNotLoggedStateImpl) then) =
      __$$UserIsNotLoggedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserIsNotLoggedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserIsNotLoggedStateImpl>
    implements _$$UserIsNotLoggedStateImplCopyWith<$Res> {
  __$$UserIsNotLoggedStateImplCopyWithImpl(_$UserIsNotLoggedStateImpl _value,
      $Res Function(_$UserIsNotLoggedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserIsNotLoggedStateImpl extends _UserIsNotLoggedState {
  const _$UserIsNotLoggedStateImpl() : super._();

  @override
  String toString() {
    return 'AuthState.userIsNotLogged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsNotLoggedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) userIsLogged,
    required TResult Function(User user) userIsLoggedFirstTime,
    required TResult Function() userIsNotLogged,
  }) {
    return userIsNotLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? userIsLogged,
    TResult? Function(User user)? userIsLoggedFirstTime,
    TResult? Function()? userIsNotLogged,
  }) {
    return userIsNotLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? userIsLogged,
    TResult Function(User user)? userIsLoggedFirstTime,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsNotLogged != null) {
      return userIsNotLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsLoggedFirstTimeState value)
        userIsLoggedFirstTime,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return userIsNotLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return userIsNotLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsLoggedFirstTimeState value)? userIsLoggedFirstTime,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsNotLogged != null) {
      return userIsNotLogged(this);
    }
    return orElse();
  }
}

abstract class _UserIsNotLoggedState extends AuthState {
  const factory _UserIsNotLoggedState() = _$UserIsNotLoggedStateImpl;
  const _UserIsNotLoggedState._() : super._();
}
