import 'package:flutter/material.dart';
import 'package:hwm48/features/welcome_page/widgets/get_started_button.dart';
import 'package:hwm48/features/welcome_page/widgets/note_image.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Column(
        children: [
          Flexible(
              flex: 1,
              child: SizedBox(
                height: 25,
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Align(
              alignment: Alignment.center,
              child: NoteImage(),
            ),
          ),
          Flexible(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GetStartedButton(),
            ),
          ),
        ],
      ),
    ));
  }
}
