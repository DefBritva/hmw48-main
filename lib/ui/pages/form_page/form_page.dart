// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/app_bloc/bloc.dart';

import 'package:hwm48/styles/text_styles.dart';
import 'package:hwm48/ui/pages/start_page/start_page.dart';

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
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.black54,
          title: Text(
            'New task',
            style: TextStyles.textStyle,
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: InputWidget(
                      controllerText: titleController,
                      maxLen: 14,
                      hint: 'Enter task title'),
                ),
                SizedBox(height: 15),
                Flexible(
                  flex: 5,
                  child: InputWidget(
                    controllerText: bodyController,
                    maxLen: 93,
                    hint: ' Enter task text',
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    context.read<TaskBloc>().add(
                          TaskEvent.addTask(
                            title: titleController.text,
                            body: bodyController.text,
                          ),
                        );
                    context.read<TaskBloc>().add(TaskEvent.openTaskPage());
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 27, 229, 132),
                      shape: StadiumBorder()),
                  child: Text(
                    'Add task',
                    style: TextStyle(color: Colors.grey.shade900),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controllerText,
    required this.maxLen,
    required this.hint,
  });

  final TextEditingController controllerText;
  final int maxLen;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLen,
      controller: controllerText,
      style: TextStyle(fontSize: 16),
      maxLines: 10,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16, color: Colors.black)),
    );
  }
}
