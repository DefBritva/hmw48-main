part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userLogged({required User user}) = _UserIsLogged;
  const factory AuthEvent.checkUserLogged() = _CheckUserLogged;

  const factory AuthEvent.userLogout() = _UserLogOut;
}
