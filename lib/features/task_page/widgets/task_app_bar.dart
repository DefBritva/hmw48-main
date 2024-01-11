import 'package:flutter/material.dart';
import 'package:hwm48/core/presentation/widgets/app_bar.dart';

class TaskAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaskAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Task',
        style: TextStyle(color: Colors.white),
      ),
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.black54,
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
