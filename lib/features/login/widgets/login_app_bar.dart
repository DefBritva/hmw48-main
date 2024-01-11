import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/presentation/widgets/app_bar.dart';
import 'package:hwm48/core/styles/text_styles.dart';
import 'package:hwm48/features/login/bloc/login_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Builder(builder: (context) {
          final state = context.watch<LoginBloc>().state;
          return state.when(
            initial: () => const SizedBox(),
            logging: () => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: LoadingAnimationWidget.hexagonDots(
                  color: Colors.amber, size: 25),
            ),
            loginError: (_) => const SizedBox(),
            logginingSuccessful: (_) => const SizedBox(),
          );
        })
      ],
      title: const Text(
        'Login',
        style: TextStyles.textStyle,
      ),
      centerTitle: true,
      backgroundColor: Colors.grey.shade900,
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
