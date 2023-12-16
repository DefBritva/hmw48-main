import 'package:flutter/material.dart';
import 'package:hwm48/core/styles/text_styles.dart';

class StartPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StartPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
      title: const Text(
        'Tasks',
        style: TextStyles.textStyle,
      ),
      backgroundColor: Colors.black54,
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
