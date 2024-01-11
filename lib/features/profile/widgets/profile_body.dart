import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeWhen(
                userIsNotLogged: () => const SizedBox(),
                orElse: () => Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 100,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 25),
                          Column(
                            children: [
                              Text(
                                'email: ${state.getUser.email}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text('first name: ${state.getUser.firstName}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text('last name: ${state.getUser.lastName}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                    ));
          },
        ),
      ),
    );
  }
}
