import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';
import '../../modules/DoneTask.dart';
import '../../modules/archivedtasks.dart';
import '../../modules/newTasks.dart';

class AppCubit extends Cubit<AppState>
{
  AppCubit():super(AppInitState());
  static AppCubit get(context)=>BlocProvider.of(context);

  List<Map> newtasks = [];
  List<Map> donetasks = [];
  List<Map> archievetasks = [];



  int currentIndex = 0;
  List<Widget> screens = [
    NewTasks(
      tasks: [],),
    const DoneTasks(),
    const archTasks(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeindex(int index){
    currentIndex=index;
    emit(ChangeNavState());
  }
  Database? db;

  void CreateDatabase()
  {
    openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database,version)
        {
          database.execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY ,title TEXT NOT ,date TEXT ,time TEXT ,status TEXT )')
              .then((value) => print("Table created successfully"));
        },
        onOpen: (database){
          getDataFromDatabase(db);
        print("Database opened successfull");
        },
    ).then((value) {
      db = value;
      emit(CreateDatabaseState());
    });
  }

   InsertDataToDatabase({
    required String title,
    required String date,
    required String time,
  })async
  {
   await db?.transaction((txn) async {
      txn.rawInsert('INSERT INTO tasks(title,date,time,status) VALUES ("${title}","${date}","$time","new")');
    }).then((val)
    {
      getDataFromDatabase(db);
      emit(InsertToDatabaseState());
      print("Data was inserted to Database are => ${val}");
    }).catchError((e)=>print(e));
  }

void getDataFromDatabase(database)
  {
    newtasks=[];
    donetasks=[];
    archievetasks=[];
    emit(GetDatabaseLoadingState());

    db?.rawQuery('SELECT *FROM tasks').then((val) {
      val.forEach((element) {
        if(element['status'] == 'new')
        {
          newtasks.add(element);
        }
        else if(element['status'] == 'done')
        {
          donetasks.add(element);
        }
        else
        {
          archievetasks.add(element);
        }
      });
      emit(GetDatabaseState());
    });
  }

  void UpdateDatebase({required String status,required int id}) {
    db?.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        ['${status}',id]
    ).then((value)
    {
      getDataFromDatabase(db);
      emit(UpdateDatabaseState());
     getDataFromDatabase(db!);
    }).catchError((e)=>print(e.toString()));
  }

  void DeleteDatebase({required int id}) {
    db?.rawDelete(
        'DELETE FROM tasks WHERE id = ?',
        [id]
    ).then((value)
    {
      emit(DeleteDatabaseState());
      getDataFromDatabase(db);
    }).catchError((e)=>print(e.toString()));
  }

  bool isButtomSheetshown = false;
  IconData fabIcon = Icons.edit;

  void changeBottomSheetState({
    required bool isShow,
    required IconData icon,

  })
  {
    isButtomSheetshown=isShow;
    fabIcon=icon;
    emit(ChangeBottomSheet());
  }
}
