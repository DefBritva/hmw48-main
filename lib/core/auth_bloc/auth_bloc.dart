import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hwm48/core/domain/entities/user.dart';
import 'package:hwm48/core/domain/services/user_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserService userService;
  AuthBloc({required this.userService}) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        userLogged: (user) async {
          if (await userService.isExist()) {
            emit(AuthState.userIsLogged(user: user));
          } else {
            await userService.saveUserId();
            await userService.saveUserData(
                email: user.email,
                firstName: user.firstName,
                lastName: user.lastName);
            emit(AuthState.userIsLoggedFirstTime(user: user));
          }
        },
        userLogout: () async {
          await userService.exit();
          emit(const AuthState.userIsNotLogged());
        },
        checkUserLogged: () async {
          if (await userService.isExist()) {
            final user = await userService.getUser();
            emit(AuthState.userIsLogged(user: user));
          } else {
            emit(const AuthState.userIsNotLogged());
          }
        },
      );
    });
  }
}
