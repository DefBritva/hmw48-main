import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/app_bloc/bloc.dart';

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
          height: 100,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    context
                        .read<TaskBloc>()
                        .add(const TaskEvent.deleteAllTasks());
                    Scaffold.of(context).closeEndDrawer();
                  },
                  child: const Text(
                    'delete all tasks',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
