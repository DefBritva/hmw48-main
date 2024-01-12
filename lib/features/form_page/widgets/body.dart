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
    required this.focus,
    required this.focus2,
  });

  final TextEditingController titleController;
  final TextEditingController bodyController;
  final FocusNode focus;
  final FocusNode focus2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    (Scaffold.of(context).appBarMaxHeight ?? 0),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: InputWidget(
                          focus: focus,
                          controllerText: titleController,
                          maxLen: 100,
                          hint: 'Enter task title'),
                    ),
                    const SizedBox(height: 50),
                    Flexible(
                      flex: 3,
                      child: InputWidget(
                        focus: focus2,
                        controllerText: bodyController,
                        maxLen: 20000,
                        hint: ' Enter task text',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Builder(builder: (context) {
                      final state = context.read<TasksBloc>().state;

                      return state.when(
                        initial: () => None,
                        loadTasks: (tasks) => ElevatedButton(
                          onPressed: () {
                            context.read<TasksBloc>().add(
                                  TasksEvent.addTask(
                                    id: tasks.length,
                                    title: titleController.text,
                                    body: bodyController.text,
                                  ),
                                );
                            context
                                .read<TasksBloc>()
                                .add(const TasksEvent.openTaskPage());
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
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            focus.hasFocus || focus2.hasFocus
                ? const SliverToBoxAdapter(
                    child: SizedBox(height: 250),
                  )
                : const SliverToBoxAdapter(
                    child: SizedBox(height: 0),
                  )
          ],
        ),
      ),
    ));
  }
}
