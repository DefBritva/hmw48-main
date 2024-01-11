import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/presentation/widgets/none.dart';
import 'package:hwm48/features/task_page/bloc/task_bloc.dart';
import 'package:hwm48/features/task_page/widgets/body_text.dart';
import 'package:hwm48/features/task_page/widgets/title_text.dart';

class TaskBody extends StatelessWidget {
  const TaskBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return state.whenOrNull(defaultState: (task) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      TitleText(title: task.title),
                      const SizedBox(height: 50),
                      BodyText(body: task.content),
                    ],
                  ),
                );
              }) ??
              None;
        },
      ),
    ));
  }
}
