import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:untitled1/shared/components/components.dart';
import 'package:untitled1/shared/components/constants.dart';
import 'package:untitled1/shared/cubit/cubit.dart';
import 'package:untitled1/shared/cubit/states.dart';


class Home_layout extends StatelessWidget {


  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();
  var titleControler = TextEditingController();
  var timeControler = TextEditingController();
  var dateControler = TextEditingController();
  @override


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit()..CreateDatabase(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (BuildContext context, AppState state){
          if(state is InsertToDatabaseState){
            Navigator.pop(context);
          }
        },
        builder:(BuildContext context, AppState state){
          AppCubit cubit =AppCubit.get(context);
          return Scaffold(

            key: scaffoldkey,
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
            ),



            body: tasks.length >=0 ? cubit.screens[cubit.currentIndex] : Center(child: CircularProgressIndicator()),

            floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  if (cubit.isButtomSheetshown) {
                    if(formkey.currentState!.validate()){
                      cubit.InsertDataToDatabase(
                          title: titleControler.text,
                          date: dateControler.text,
                          time: timeControler.text);
                    }
                  } else {
                    scaffoldkey.currentState?.showBottomSheet((context) =>
                        Container(
                          width: double.infinity,
                          height: 250,
                          color: Colors.grey[300],
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Form(
                                key: formkey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    defFormField(
                                      type: TextInputType.text,
                                      controller: titleControler,
                                      lable: 'Task Title',
                                      prefix: Icons.title,
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'title must not be empty';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    defFormField(
                                      type: TextInputType.datetime,
                                      controller: timeControler,
                                      lable: 'Task Time',
                                      onTap: () {
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          timeControler.text =
                                              value!.format(context).toString();
                                          print(value.format(context));
                                        });
                                      },
                                      prefix: Icons.timer,
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'time must not be empty';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    defFormField(
                                      type: TextInputType.datetime,
                                      controller: dateControler,
                                      lable: 'Task Date',
                                      onTap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2023),
                                        ).then((value) {
                                          dateControler.text =
                                              DateFormat.yMMMd().format(value!);
                                        });
                                      },
                                      prefix: Icons.calendar_month,
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'time must not be empty';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))
                        .closed
                        .then((value) {
                          cubit.changeBottomSheetState(isShow: false, icon: Icons. edit,);
                    });
                    cubit.changeBottomSheetState(isShow: true, icon: Icons.add,);
                  }
                },
                child: Icon(cubit.fabIcon)),

            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.grey,
              currentIndex: cubit.currentIndex,
              elevation: 20,
              onTap: (index) {
                /* setState(() {
                currentIndex = index;
              });*/
                cubit.changeindex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle_outline,
                  ),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.archive_outlined,
                  ),
                  label: 'Archieved',
                ),
              ],
            ),
          );
        } ,
      ),
    );
  }
}


