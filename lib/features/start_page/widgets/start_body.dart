import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/presentation/widgets/none.dart';

class StartBody extends StatelessWidget {
  const StartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final state = context.watch<TaskBloc>().state;
      return state.when(
          initial: () => None,
          loadTasks: (tasks) => GridView.builder(
                itemCount: tasks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: ((context, index) {
                  final tasksR = tasks.reversed.toList();
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
                                      context.read<TaskBloc>().add(
                                            TaskEvent.doneTask(
                                              id: tasksR[index].id,
                                              title: tasksR[index].title,
                                              body: tasksR[index].content,
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
                      // Navigator.of(context).pushNamed('/start/task');
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
                            children: [
                              Text(
                                tasksR[index].title,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 7.5),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 50,
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.45,
                                  minHeight: 50,
                                  maxHeight: 200,
                                ),
                                child: AutoSizeText(
                                  minFontSize: 11,
                                  maxFontSize: 14,
                                  maxLines: 5,
                                  tasksR[index].content,
                                ),
                              ),
                            ],
                          ),
                        ),
                        tasksR[index].isDone
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
                            : None
                      ],
                    ),
                  );
                }),
              ));
    });
  }
}
