import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/features/tasks_page/widgets/add_button.dart';
import 'package:hwm48/features/tasks_page/widgets/app_bar.dart';
import 'package:hwm48/features/tasks_page/widgets/menu_drawer.dart';
import 'package:hwm48/features/tasks_page/widgets/tasks_body.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  void initState() {
    context.read<TasksBloc>().add(const TasksEvent.openTaskPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StartPageAppBar(),
      backgroundColor: Colors.deepPurpleAccent,
      body: StartBody(),
      floatingActionButton: AddButton(),
      endDrawer: MenuDrawer(),
    );
  }
}
