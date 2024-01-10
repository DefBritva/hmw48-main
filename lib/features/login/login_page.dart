import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/presentation/widgets/form_widget.dart';
import 'package:hwm48/core/presentation/widgets/password_widget.dart';
import 'package:hwm48/core/styles/text_styles.dart';
import 'package:hwm48/core/utils/app_navigation.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
            appBar: AppBar(
              actions: [
                Builder(builder: (context) {
                  final state = context.watch<LoginBloc>().state;
                  return state.when(
                    initial: () => const SizedBox(),
                    logging: () => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: LoadingAnimationWidget.hexagonDots(
                          color: Colors.amber, size: 25),
                    ),
                    loginError: (_) => const SizedBox(),
                    logginingSuccessful: (_) => const SizedBox(),
                  );
                })
              ],
              title: const Text(
                'Login',
                style: TextStyles.textStyle,
              ),
              centerTitle: true,
              backgroundColor: Colors.grey.shade900,
            ),
            body: Padding(
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
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
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
                          ))),
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
                  IconButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      context
                          .read<LoginBloc>()
                          .add(const LoginEvent.loginWithVk());
                    },
                    icon: SvgPicture.asset(
                      'assets/images/vk-1.svg',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
