import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {super.key,
      required this.hint,
      this.obsure,
      this.decoration,
      this.controller});
  final TextEditingController? controller;
  final String hint;
  final bool? obsure;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsure ?? false,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white54,
      expands: false,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.white),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
