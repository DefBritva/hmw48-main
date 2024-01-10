// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';
import 'package:hwm48/features/task_page/bloc/task_bloc.dart';

class StartBody extends StatelessWidget {
  const StartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final state = context.watch<TasksBloc>().state;
      return state.when(
          initial: () => Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  color: Colors.yellowAccent,
                ),
              ),
          loadTasks: (tasks) => GridView.builder(
                itemCount: tasks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onLongPress: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('completing task'),
                              content: const Text('Do you want complete task?'),
                              alignment: Alignment.center,
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('no')),
                                TextButton(
                                    onPressed: () {
                                      context.read<TasksBloc>().add(
                                            TasksEvent.doneTask(
                                              id: tasks[index].id,
                                              title: tasks[index].title,
                                              body: tasks[index].content,
                                              isDone: true,
                                            ),
                                          );
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('yes')),
                              ],
                            );
                          });
                    },
                    onTap: () {
                      context
                          .read<TaskBloc>()
                          .add(TaskEvent.openTask(id: index));

                      AppNavigation.goTaskPage(context);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 100,
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.45,
                                  minHeight: 100,
                                  maxHeight: 200,
                                ),
                                child: AutoSizeText(
                                    minFontSize: 14,
                                    maxFontSize: 16,
                                    maxLines: 5,
                                    tasks[index].title),
                              ),
                            ],
                          ),
                        ),
                        tasks[index].isDone
                            ? Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'assets/images/done-5.svg',
                                  color:
                                      const Color.fromARGB(255, 27, 229, 132),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  );
                }),
              ));
    });
  }
}
