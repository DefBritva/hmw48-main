import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

import 'package:hwm48/features/start_page/widgets/app_bar.dart';
import 'package:hwm48/features/start_page/widgets/start_body.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        AppNavigation.goFormPage(context);
      },
      child: const Icon(Icons.add),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding:
            EdgeInsets.only(top: Scaffold.of(context).appBarMaxHeight ?? 0),
        child: SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    context
                        .read<TasksBloc>()
                        .add(const TasksEvent.deleteAllTasks());
                  },
                  child: const Text('remove all tasks'),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<TasksBloc>()
                        .add(const TasksEvent.deleteAllCompleted());
                  },
                  child: const Text('remove all completed'),
                ),
                TextButton(
                  onPressed: () {
                    Scaffold.of(context).closeEndDrawer();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Usage guideline'),
                            content: const SizedBox(
                              height: 200,
                              width: 200,
                              child: Column(
                                children: [
                                  Text(
                                      '1. To complete the task use long press on task and choose yes.'),
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('ok')),
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'usage guideline',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
