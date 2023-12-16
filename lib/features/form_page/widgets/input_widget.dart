import 'package:flutter/material.dart';

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
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      maxLength: maxLen,
      controller: controllerText,
      style: const TextStyle(fontSize: 18),
      maxLines: 10,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12)),
        helperText: hint,
        helperStyle: const TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
