import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hwm48/core/domain/entities/user.dart';
import 'package:hwm48/core/domain/services/login_repos.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginReposImpl loginRepos;
  LoginBloc({required this.loginRepos}) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        loginPageOpen: () {
          emit(const LoginState.initial());
        },
        login: (email, password) async {
          try {
            emit(const LoginState.logging());
            final user =
                await loginRepos.login(email: email, password: password);
            if (user != null) {
              emit(LoginState.logginingSuccessful(user: user));
            }
          } on Exception catch (err) {
            emit(LoginState.loginError(
                message: err.toString().replaceAll('Exception: ', '')));
          }
        },
        loginWithVk: () async {
          try {
            emit(const LoginState.logging());
            final user = await loginRepos.loginWithVk();
            emit(
              LoginState.logginingSuccessful(
                user: user ?? User.nullable(),
              ),
            );
          } on Exception catch (e) {
            emit(LoginState.loginError(
                message: e.toString().replaceAll('Exception: ', '')));
          }
        },
      );
    });
  }
}
