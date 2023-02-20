
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/layout/News%20App/cubit/cubit.dart';
import 'package:untitled1/layout/News%20App/cubit/states.dart';
import 'package:untitled1/shared/network/remote/dio-helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewsCubit(),
      child: BlocConsumer<NewsCubit,NewsStates>(
        listener:(context,state){} ,
        builder: (context,state){
          var cubit=NewsCubit.get(context);
          return  Scaffold(
            body: cubit.Screens[cubit.currentIndex],
            appBar: AppBar(
              title: Text(
                  'News App'),
              actions: [
                IconButton(
                    onPressed: (){}, icon: Icon(Icons.search,))
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
               DioHelper.getData(
                   url: 'v2/top-headlines',
                   query: {
                     'country':'eg',
                     'category':'business',
                     'apikey':'65f7f55c6ec76449fa7dc7c0069f040ca',


                   }).then((value) {
                     print(value?.data.toString());
               }).catchError((error){
                 print(error.toString());
               });
              },
              child: Icon(
                Icons.add,),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items:cubit.Bottomitems ,
              currentIndex: cubit.currentIndex,
              onTap: (index){
              cubit.changeNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
