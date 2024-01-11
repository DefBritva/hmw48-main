import 'package:flutter/material.dart';
import 'package:hwm48/features/profile/widgets/profile_app_bar.dart';
import 'package:hwm48/features/profile/widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      resizeToAvoidBottomInset: false,
      appBar: ProfileAppBar(),
      body: ProfileBody(),
    );
  }
}
