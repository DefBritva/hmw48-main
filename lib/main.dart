import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/app_bloc/obs.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/domain/services/login_repos.dart';
import 'package:hwm48/core/domain/services/task_service.dart';
import 'package:hwm48/core/domain/services/user_service.dart';
import 'package:hwm48/core/utils/app_navigation.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';
import 'package:hwm48/features/task_page/bloc/task_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => TaskReposImpl(),
        ),
        RepositoryProvider(
          create: (context) => LoginReposImpl(),
        ),
        RepositoryProvider(
          create: (context) => UserService(),
        ),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TasksBloc(
            taskService: context.read<TaskReposImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              LoginBloc(loginRepos: context.read<LoginReposImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              AuthBloc(userService: context.read<UserService>()),
        ),
        BlocProvider(
          create: (context) => TaskBloc(context.read<TaskReposImpl>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppNavigation.routes,
        initialRoute: AppNavigation.loadingPage,
      ),
    );
  }
}
