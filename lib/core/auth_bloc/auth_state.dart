part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  User get getUser {
    return mapOrNull(
          userIsLogged: (state) => state.user,
          userIsLoggedFirstTime: (state) => state.user,
        ) ??
        User(email: '', firstName: '', lastName: '');
  }

  const factory AuthState.initial() = _Initial;

  const factory AuthState.userIsLogged({required User user}) =
      _UserIsLoggedState;

  const factory AuthState.userIsLoggedFirstTime({required User user}) =
      _UserIsLoggedFirstTimeState;

  const factory AuthState.userIsNotLogged() = _UserIsNotLoggedState;
}
