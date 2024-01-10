import 'package:hwm48/core/domain/entities/user.dart';

abstract class LoginRepos {
  Future<User?> login({
    required String email,
    required String password,
  });

  Future<User?> loginWithVk();
}

class LoginReposImpl extends LoginRepos {
  @override
  Future<User?> login({required String email, required String password}) async {
    if (email.isEmpty && password.isNotEmpty) {
      throw Exception('An empty field email');
    } else if (email.isNotEmpty && password.isEmpty) {
      throw Exception('An empty field password');
    } else if (email.isEmpty && password.isEmpty) {
      throw Exception('Empty email and password fields');
    }
    final errorPattern = RegExp(r'[._-]{2,}');
    if (email.contains(errorPattern)) {
      throw Exception('The symbols are - . _ must not go in a row');
    }
    final patternEmail = RegExp(
        r'[a-zA-Z][A-Z0-9a-z._-]+[a-zA-Z0-9]@[A-Z0-9a-z._-]+[.][A-Za-z]+');

    if (!patternEmail.hasMatch(email)) {
      throw Exception('Invalid email format');
    }
    if (email == 'example@sample.com' && password == 'password') {
      return await Future.delayed(
        const Duration(seconds: 1),
        () => User(email: email, firstName: 'firstName', lastName: 'lastName'),
      );
    } else {
      return await Future.delayed(
        const Duration(seconds: 1),
        () => throw Exception('Invalid email or password'),
      );
    }
  }

  @override
  Future<User?> loginWithVk() async {
    return await Future.delayed(
      const Duration(seconds: 2),
      () => User(
        email: 'example@sample.com',
        firstName: 'firstName',
        lastName: 'lastName',
      ),
    );
  }
}
