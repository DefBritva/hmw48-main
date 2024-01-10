import 'package:flutter/material.dart';
import 'package:hwm48/features/form_page/form_page.dart';
import 'package:hwm48/features/loading_page/loading_page.dart';
import 'package:hwm48/features/login/login_page.dart';
import 'package:hwm48/features/profile/profile.dart';
import 'package:hwm48/features/start_page/start_page.dart';
import 'package:hwm48/features/task_page/task_page.dart';
import 'package:hwm48/features/welcome_page/welcome_page.dart';

sealed class AppNavigation {
  static void goTasksPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(tasksPage);
  }

  static void goLoginPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(loginPage);
  }

  static void goWelcomePage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(welcomePage);
  }

  static void goFormPage(BuildContext context) {
    Navigator.of(context).pushNamed(formPage);
  }

  static void goProfile(BuildContext context) {
    Navigator.of(context).pushNamed(profilePage);
  }

  static void goTaskPage(BuildContext context) {
    Navigator.of(context).pushNamed(taskPage);
  }

  static const String loginPage = '/login';
  static const String tasksPage = '/tasks';
  static const String welcomePage = '/welcome';
  static const String formPage = '/tasks/form';
  static const String profilePage = '/tasks/profile';
  static const String loadingPage = '/loading';
  static const String taskPage = '/tasks/task';

  static Map<String, Widget Function(BuildContext)> routes = {
    loginPage: (context) => const LoginPage(),
    tasksPage: (context) => const StartPage(),
    taskPage: (context) => const TaskPage(),
    welcomePage: (context) => const WelcomePage(),
    formPage: (context) => const FormPage(),
    profilePage: (context) => const ProfilePage(),
    loadingPage: (context) => const LoadingPage(),
  };
}
