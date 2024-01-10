import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Row(
            children: [
              const Text(
                'logout',
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Logout'),
                            content: const Text(
                                'The exit will be followed by the complete deletion of the notes. Are you sure?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthBloc>()
                                      .add(const AuthEvent.userLogout());
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/login', (route) => false);
                                },
                                child: const Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('No'),
                              )
                            ],
                          );
                        });
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  )),
            ],
          )
        ],
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
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
      ),
    );
  }
}
