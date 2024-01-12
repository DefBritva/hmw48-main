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
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
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
                          controllerText: titleController,
                          maxLen: 100,
                          hint: 'Enter task title'),
                    ),
                    const SizedBox(height: 50),
                    Flexible(
                      flex: 3,
                      child: InputWidget(
                        controllerText: bodyController,
                        maxLen: 20000,
                        hint: ' Enter task text',
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 50,
                      ),
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
            MediaQuery.of(context).viewInsets.bottom != 0
                ? SliverToBoxAdapter(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.42),
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
