import 'package:flutter/material.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

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
