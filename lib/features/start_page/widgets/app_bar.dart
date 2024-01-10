// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/styles/text_styles.dart';
import 'package:hwm48/core/utils/app_navigation.dart';

class StartPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StartPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      insetPadding: EdgeInsets.only(top: 75),
                      alignment: Alignment.topCenter,
                      backgroundColor: Colors.white,
                      title: Text('User'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              AppNavigation.goProfile(context);
                            },
                            child: Text('Profile')),
                      ],
                      content: SizedBox(
                        height: 100,
                        child: BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                userIsNotLogged: () => SizedBox(),
                                orElse: () => Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                                'email: ${state.getUser.email}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                'first name: ${state.getUser.firstName}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                'last name: ${state.getUser.lastName}'),
                                          ],
                                        ),
                                      ],
                                    ));
                          },
                        ),
                      ),
                    );
                  });
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
      title: const Text(
        'Tasks',
        style: TextStyles.textStyle,
      ),
      backgroundColor: Colors.black54,
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
