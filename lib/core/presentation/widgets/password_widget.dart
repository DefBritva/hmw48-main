import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key, required this.hint, this.controller});

  final String hint;
  final TextEditingController? controller;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool obsure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: obsure,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white54,
      expands: false,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obsure = !obsure;
            });
          },
          icon: obsure
              ? const Icon(
                  Icons.visibility,
                  color: Colors.white54,
                )
              : const Icon(
                  Icons.visibility_off,
                  color: Colors.white54,
                ),
        ),
        hintStyle: const TextStyle(color: Colors.white),
        hintText: widget.hint,
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
