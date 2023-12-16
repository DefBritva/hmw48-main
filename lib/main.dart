import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/app_bloc/obs.dart';
import 'package:hwm48/core/domain/services/task_service.dart';
import 'package:hwm48/features/form_page/form_page.dart';
import 'package:hwm48/features/start_page/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TaskService(),
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
    return BlocProvider(
      create: (context) => TaskBloc(context.read<TaskService>()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/start': (context) => const StartPage(),
          '/start/form': (context) => const FormPage(),
        },
        initialRoute: '/start',
      ),
    );
  }
}
