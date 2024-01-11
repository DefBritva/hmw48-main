import 'package:flutter/material.dart';
import 'package:hwm48/core/presentation/widgets/app_bar.dart';

class WelcomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const Border(bottom: BorderSide(color: Colors.white, width: 0.5)),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      title: const Text(
        'Squary notes',
        style: TextStyle(
            fontFamily: 'Lemon', color: Color.fromARGB(255, 252, 244, 1)),
      ),
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
