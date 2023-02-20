

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/shared/cubit/cubit.dart';
var emailController = TextEditingController();
var passwordController = TextEditingController();

Widget defButton({
  required double width,
  required Color c,
  required String text,
  required double radius,
  required final void Function()? function,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );

Widget defFormField({
  required TextInputType type,
  required TextEditingController controller,
  required String lable,
  required IconData prefix,
  bool isPass = false,
  bool isClickable = true,
  IconData? suffix,
  final void Function()? suffixpressed,
  Function? validate,
  Function? onTap,
}) =>
    TextFormField(
      controller: controller,
      obscureText: isPass,
      keyboardType: type,
      enabled: isClickable,
      onFieldSubmitted: (String value) {
        print(value);
      },
      validator: (s) {
        validate!(s);
      },
      decoration: InputDecoration(
        labelText: lable,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixpressed, icon: Icon(suffix))
            : null,
        border: OutlineInputBorder(),
      ),
      onTap: () {
        onTap!();
      },
    );

Widget buildtaskitem(Map model,context) => Dismissible(
  key: Key (model['id'].toString()),
  child: Padding(
  
        padding: const EdgeInsets.all(15.0),
  
        child: Row(
  
          children: [
  
            CircleAvatar(
  
              radius: 50,
  
              child: Text(
  
                '${model['time']}',
  
              ),
  
            ),
  
            SizedBox(
  
              height: 15,
  
            ),
  
            Expanded(
  
              child: Column(
  
                mainAxisSize: MainAxisSize.min,
  
                children: [
  
                  Text(
  
                    '${model['title']}',
  
                    style: TextStyle(
  
                      fontWeight: FontWeight.bold,
  
                      fontSize: 20,
  
                    ),
  
                  ),
  
                  Text(
  
                    '${model['date']}',
  
                    style: TextStyle(
  
                      fontWeight: FontWeight.bold,
  
                      fontSize: 20,
  
                      color: Colors.grey,
  
                    ),
  
                  ),
  
                ],
  
              ),
  
            ),
  
            SizedBox(
  
              height: 15,
  
            ),
  
            IconButton(
  
                onPressed: () {
  
                  AppCubit.get(context).UpdateDatebase(status: 'done', id: model['id'],);
  
                },
  
                icon: Icon(Icons.check_circle),
  
              color: Colors.grey,
  
            ),
  
            IconButton(
  
                onPressed: () {
  
                  AppCubit.get(context).UpdateDatebase(status: 'archived', id: model['id'],);
  
  
  
                },
  
              icon: Icon(Icons.archive),
  
              color: Colors.green,
  
            ),
  
          ],
  
        ),
  
      ),
  onDismissed: (direction){
AppCubit.get(context).DeleteDatebase(id:model['id'],);
  },
);

Widget taskBuider ({required List<Map> tasks}
    )=>ConditionalBuilder(
  condition:tasks.length>0 ,
  builder: (context)=>ListView.separated(itemBuilder: (context, index) => buildtaskitem(tasks[index],context),
      separatorBuilder: (context,index,)=> Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey,
      ),
      itemCount: tasks.length),
  fallback: (context)=>Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.menu,
          size: 100,
          color: Colors.grey,),
        Text(
          'No Tasks Yet,Please Add Some Tasks'
          ,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ],
    ),
  ),
);
