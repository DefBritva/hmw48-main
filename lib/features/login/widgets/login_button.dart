import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<LoginBloc>().add(
                    LoginEvent.login(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
            },
            child: const Text(
              'Enter',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )));
  }
}
