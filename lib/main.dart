// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/app_bloc/bloc.dart';
import 'package:hwm48/app_bloc/obs.dart';
import 'package:hwm48/data/db/app_db.dart';
import 'package:hwm48/domain/services/task_service.dart';

import 'package:hwm48/ui/pages/form_page/form_page.dart';
import 'package:hwm48/ui/pages/task_page/task_page.dart';
import 'package:hwm48/ui/pages/start_page/start_page.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final db = AppDatabase();
  // await db.deleteAllTasks();
  Bloc.observer = MyBlocObserver();
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TaskServiceImpl(),
      child: App(),
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
      create: (context) => TaskBloc(context.read<TaskServiceImpl>()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/start': (context) => const StartPage(),
          '/start/form': (context) => const FormPage(),
          '/start/task': (context) => const TaskPage(),
        },
        initialRoute: '/start',
      ),
    );
  }
}
