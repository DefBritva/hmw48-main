import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';

class LoginWithVkButton extends StatelessWidget {
  const LoginWithVkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        context.read<LoginBloc>().add(const LoginEvent.loginWithVk());
      },
      icon: SvgPicture.asset(
        'assets/images/vk-1.svg',
        height: 40,
        width: 40,
      ),
    );
  }
}
