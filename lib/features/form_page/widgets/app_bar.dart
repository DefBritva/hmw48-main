import 'package:flutter/material.dart';
import 'package:hwm48/core/styles/text_styles.dart';

class FormPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  FormPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.black54,
      title: const Text(
        'New task',
        style: TextStyles.textStyle,
      ),
    );
  }

  final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
