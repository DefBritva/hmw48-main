import 'package:flutter/material.dart';

class NoteImage extends StatelessWidget {
  const NoteImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/notes.png',
      ),
    );
  }
}
