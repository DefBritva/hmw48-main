import 'package:flutter/material.dart';
import 'package:hwm48/features/welcome_page/widgets/get_started_button.dart';
import 'package:hwm48/features/welcome_page/widgets/note_image.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: CustomScrollView(physics: ClampingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              NoteImage(),
              GetStartedButton(),
              SizedBox(height: 50)
            ],
          ),
        ),
      )
    ]));
  }
}
