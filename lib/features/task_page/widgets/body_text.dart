import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String body;
  const BodyText({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
