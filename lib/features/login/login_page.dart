import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';
import 'package:hwm48/features/login/widgets/login_app_bar.dart';
import 'package:hwm48/features/login/widgets/login_body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.when(
              initial: () {
                emailController.clear();
                passwordController.clear();
              },
              logginingSuccessful: (lgdUser) {
                context
                    .read<AuthBloc>()
                    .add(AuthEvent.userLogged(user: lgdUser));
              },
              loginError: (error) {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.amber, content: Text(error)));
              },
              logging: () {},
            );
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              userIsLogged: (_) {
                AppNavigation.goTasksPage(context);
              },
              userIsLoggedFirstTime: (_) {
                AppNavigation.goWelcomePage(context);
              },
              initial: () {},
              userIsNotLogged: () {},
            );
          },
        ),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.grey.shade900,
            appBar: const LoginAppBar(),
            body: LoginBody(
              emailController: emailController,
              passwordController: passwordController,
            )),
      ),
    );
  }
}
