import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/presentation/widgets/none.dart';
import 'package:hwm48/features/form_page/widgets/input_widget.dart';

class FormPageBody extends StatelessWidget {
  const FormPageBody({
    super.key,
    required this.titleController,
    required this.bodyController,
  });

  final TextEditingController titleController;
  final TextEditingController bodyController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: InputWidget(
                  controllerText: titleController,
                  maxLen: 14,
                  hint: 'Enter task title'),
            ),
            const SizedBox(height: 50),
            Flexible(
              flex: 3,
              child: InputWidget(
                controllerText: bodyController,
                maxLen: 100,
                hint: ' Enter task text',
              ),
            ),
            Expanded(flex: 1, child: Container()),
            Builder(builder: (context) {
              final state = context.read<TaskBloc>().state;

              return state.when(
                  initial: () => None,
                  loadTasks: (tasks) => ElevatedButton(
                        onPressed: () {
                          context.read<TaskBloc>().add(
                                TaskEvent.addTask(
                                  id: tasks.length,
                                  title: titleController.text,
                                  body: bodyController.text,
                                ),
                              );
                          context
                              .read<TaskBloc>()
                              .add(const TaskEvent.openTaskPage());
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 27, 229, 132),
                            shape: const StadiumBorder()),
                        child: Text(
                          'Add task',
                          style: TextStyle(color: Colors.grey.shade900),
                        ),
                      ));
            })
          ],
        ),
      ),
    ));
  }
}
