import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.checkUserLogged());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(userIsLogged: (_) {
          AppNavigation.goTasksPage(context);
        }, userIsNotLogged: () {
          AppNavigation.goLoginPage(context);
        });
      },
      child: const Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey,
            color: Colors.yellowAccent,
          ),
        ),
      ),
    );
  }
}
