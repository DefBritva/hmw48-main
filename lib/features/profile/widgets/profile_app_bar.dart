import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwm48/core/auth_bloc/auth_bloc.dart';
import 'package:hwm48/core/presentation/widgets/app_bar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
