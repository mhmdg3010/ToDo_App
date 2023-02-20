import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/layout/News%20App/cubit/states.dart';
import 'package:untitled1/modules/News/business/Business%20Screen.dart';
import 'package:untitled1/modules/News/settings/settings.dart';
import '../../../modules/News/Science/science screen.dart';
import '../../../modules/News/sports/Sports Screen.dart';


class NewsCubit extends Cubit<NewsStates>{
  NewsCubit ():super(InitialStates());
  static NewsCubit get(context)=>BlocProvider.of(context);
  int currentIndex =0;

  List<Widget>Screens=[
    Business_Screen(),
    Science_Screen(),
    Sports_Screen(),
    settings_Screen(),
  ];

  List<BottomNavigationBarItem> Bottomitems =[
    BottomNavigationBarItem(
        icon: Icon(
          Icons.business_center,),
        label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science_outlined,),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_soccer_rounded,),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,),
      label: 'Settings',
    ),
  ];
  void changeNavBar(int index){
    currentIndex=index;
    emit(BottomNavStates());
  }

}