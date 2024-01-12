import 'package:flutter/material.dart';
import 'package:hwm48/features/form_page/widgets/app_bar.dart';
import 'package:hwm48/features/form_page/widgets/body.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        resizeToAvoidBottomInset: false,
        appBar: FormPageAppBar(),
        body: FormPageBody(
          titleController: titleController,
          bodyController: bodyController,
        ),
      ),
    );
  }
}
