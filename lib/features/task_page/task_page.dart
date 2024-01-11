import 'package:flutter/material.dart';
import 'package:hwm48/features/task_page/widgets/task_app_bar.dart';
import 'package:hwm48/features/task_page/widgets/task_body.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      resizeToAvoidBottomInset: false,
      appBar: TaskAppBar(),
      body: TaskBody(),
    );
  }
}
