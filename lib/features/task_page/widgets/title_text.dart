import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
