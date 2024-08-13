import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/feature/admin/bloc/admin_bloc.dart';
import 'package:deeplinker/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AdminBloc, AdminState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Text(
                  'Admin status: ${state is Authenticated ? 'Granted' : 'Not granted'}'),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (state is Authenticated) {
                    context.read<AdminBloc>().add(Deauthenticate());
                  } else {
                    context.read<AdminBloc>().add(Authenticate());
                  }
                },
                child: const Text('Change admin status'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.router.push(const AdminProfileRoute());
                },
                child: const Text('Open Admin Page'),
              )
            ],
          );
        },
      ),
    );
  }
}
