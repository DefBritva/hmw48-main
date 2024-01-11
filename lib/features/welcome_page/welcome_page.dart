import 'package:flutter/material.dart';
import 'package:hwm48/features/welcome_page/widgets/welcome_app_bar.dart';
import 'package:hwm48/features/welcome_page/widgets/welcome_body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: WelcomeAppBar(),
      body: WelcomeBody(),
    );
  }
}
