import 'package:bloc_api/bloc/user_bloc.dart';

import 'package:bloc_api/services/user_repository.dart';
import 'package:bloc_api/wigets/action_buttons.dart';
import 'package:bloc_api/wigets/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  final usersRepository = UsersRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(usersRepository),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('User list'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ActionButtons(),
            Expanded(
              child: UserList(),
            )
          ],
        ),
      ),
    );
  }
}
