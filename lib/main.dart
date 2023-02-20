import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/layout/ToDo/todo%20App.dart';
import 'package:untitled1/shared/bloc_observer.dart';
import 'package:untitled1/shared/network/remote/dio-helper.dart';


void main() {
  Bloc.observer=MyBlocObserver();
  DioHelper.init();
  runApp(  const MyApp());
}

class MyApp extends StatelessWidget
{
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return   MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,


          ),
          color: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home_layout(),

    );
  }
}