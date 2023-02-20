
import 'package:flutter/material.dart';
import 'package:untitled1/models/user/user_model.dart';

class UserScreen extends StatelessWidget {
List<UserMod> users =[
  UserMod(
    id: 1, name: 'ali', phone: '0122343567785',),
  UserMod(
    id: 2, name: 'ahmed', phone: '0122348876',),
  UserMod(
    id: 3, name: 'sami', phone: '01223422300',),
  UserMod(
    id: 4, name: 'alaa', phone: '012234111',),
  UserMod(
    id: 1, name: 'ali', phone: '0122343567785',),
  UserMod(
    id: 2, name: 'ahmed', phone: '0122348876',),
  UserMod(
    id: 3, name: 'sami', phone: '01223422300',),
  UserMod(
    id: 4, name: 'alaa', phone: '012234111',),
  UserMod(
    id: 1, name: 'ali', phone: '0122343567785',),
  UserMod(
    id: 2, name: 'ahmed', phone: '0122348876',),
  UserMod(
    id: 3, name: 'sami', phone: '01223422300',),
  UserMod(
    id: 4, name: 'alaa', phone: '012234111',),
  UserMod(
    id: 1, name: 'ali', phone: '0122343567785',),
  UserMod(
    id: 2, name: 'ahmed', phone: '0122348876',),
  UserMod(
    id: 3, name: 'sami', phone: '01223422300',),
  UserMod(
    id: 4, name: 'alaa', phone: '012234111',),
];

UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Users',),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15,),
        child: ListView.separated(
            itemBuilder: (context, index) => buildUserItem (users [index]),
            separatorBuilder: (context,index)=>Container(
              height: 1,
              color: Colors.black,
              width: double.infinity,
            ),
            itemCount: users.length,),
      ),
    );
  }

  Widget buildUserItem (UserMod users)=>Row(
    children: [
      CircleAvatar(
        radius: 25,
        child: Text(
          '${users.id}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        width: 20,),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
             '${users.name}'),
          SizedBox(
            height: 5,),
          Text(
          '${users.phone}',
            style: TextStyle(
              color: Colors.grey,
            ),

          ),
        ],
      ),
    ],
  );
}
