import 'package:flutter/material.dart';
import 'package:hwm48/features/form_page/widgets/app_bar.dart';
import 'package:hwm48/features/form_page/widgets/body.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final focus = FocusNode();
  final focus2 = FocusNode();
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void dispose() {
    focus.dispose();
    focus2.dispose();
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
          focus: focus,
          focus2: focus2,
          titleController: titleController,
          bodyController: bodyController,
        ),
      ),
    );
  }
}
