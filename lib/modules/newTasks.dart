import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/shared/components/components.dart';
import 'package:untitled1/shared/cubit/cubit.dart';
import 'package:untitled1/shared/cubit/states.dart';

class NewTasks extends StatelessWidget {
  final List <Map> tasks;
  NewTasks({
    required this.tasks
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks =AppCubit.get(context).newtasks;
        return taskBuider(
            tasks:tasks,
        );
      },
    );

  }
}
