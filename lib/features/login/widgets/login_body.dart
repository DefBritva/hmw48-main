import 'package:flutter/material.dart';
import 'package:hwm48/core/presentation/widgets/form_widget.dart';
import 'package:hwm48/core/presentation/widgets/password_widget.dart';
import 'package:hwm48/features/login/widgets/login_button.dart';
import 'package:hwm48/features/login/widgets/login_with_vk_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormWidget(
            hint: 'E-mail',
            controller: emailController,
          ),
          const SizedBox(
            height: 15,
          ),
          PasswordWidget(
            hint: 'Password',
            controller: passwordController,
          ),
          const SizedBox(
            height: 15,
          ),
          LoginButton(
            emailController: emailController,
            passwordController: passwordController,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Or loggining with',
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 15,
          ),
          const LoginWithVkButton(),
        ],
      ),
    );
  }
}
