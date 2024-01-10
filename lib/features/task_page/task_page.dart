// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/features/task_page/bloc/task_bloc.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Task',
          style: TextStyle(color: Colors.white),
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            return state.whenOrNull(defaultState: (task) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            task.title,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(task.content,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  );
                }) ??
                SizedBox();
          },
        ),
      )),
    );
  }
}
