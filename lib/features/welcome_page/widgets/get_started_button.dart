import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/app_bloc/bloc.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TasksBloc>().add(const TasksEvent.fetchWelcomeTasks());
        AppNavigation.goTasksPage(context);
      },
      child: Container(
        color: Colors.white,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: const Center(
            child: Text(
          'Get started',
          style: TextStyle(fontSize: 25, color: Colors.deepPurpleAccent),
        )),
      ),
    );
  }
}
