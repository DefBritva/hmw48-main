import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';

import 'package:hwm48/features/start_page/widgets/app_bar.dart';
import 'package:hwm48/features/start_page/widgets/drawer.dart';
import 'package:hwm48/features/start_page/widgets/start_body.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    context.read<TaskBloc>().add(const TaskEvent.openTaskPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MenuDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/start/form');
          },
          backgroundColor: Colors.deepPurple,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: const StartPageAppBar(),
        backgroundColor: Colors.deepPurpleAccent,
        body: const StartBody());
  }
}
