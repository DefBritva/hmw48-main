part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _InitialLoginState;
  const factory LoginState.logging() = _LoggingState;
  const factory LoginState.logginingSuccessful({required User user}) =
      _LoggingSuccessfulState;
  const factory LoginState.loginError({required String message}) =
      _LoggingErrorState;
}
