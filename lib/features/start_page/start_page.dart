// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
    context.read<TaskBloc>().add(TaskEvent.openTaskPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MenuDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/start/form');
          },
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: StartPageAppBar(),
        backgroundColor: Colors.deepPurpleAccent,
        body: StartBody());
  }
}
