import 'package:bloc_api/bloc/user_bloc.dart';
import 'package:bloc_api/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          child: Text('Load'),
          onPressed: () {
            userBloc.add(UserLoadEvent());
          },
          // color: Colors.green,
        ),
        SizedBox(width: 8.0),
        ElevatedButton(
          child: Text('Clear'),
          onPressed: () {
            userBloc.add(UserClearEvent());
          },
          // color: Colors.green,
        )
      ],
    );
  }
}
