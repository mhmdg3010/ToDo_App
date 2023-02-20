import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/modules/counter/cubit/cubit.dart';
import 'package:untitled1/modules/counter/cubit/states.dart';

class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)  =>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
       listener: (context, state) {},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Counter',
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'MINUS',
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${CounterCubit.get(context).Counter}',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
                  ),
                ),
                TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'PLUS',
                    )),
              ],
            ),
          ),
        );},
      ),
      );

  }
}
