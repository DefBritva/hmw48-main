// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.white, width: 0.5)),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text(
          'Squary notes',
          style: TextStyle(
              fontFamily: 'Lemon', color: Color.fromARGB(255, 252, 244, 1)),
        ),
      ),
      body: SafeArea(
          child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Text('Welcome!',
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                      SizedBox(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/notes.png',
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<TasksBloc>()
                              .add(const TasksEvent.fetchWelcomeTasks());
                          AppNavigation.goTasksPage(context);
                        },
                        child: Container(
                          color: Colors.white,
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                              child: Text(
                            'Get started',
                            style: TextStyle(
                                fontSize: 25, color: Colors.deepPurpleAccent),
                          )),
                        ),
                      ),
                      SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            )
          ])),
    );
  }
}
