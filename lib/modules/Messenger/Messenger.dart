
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        titleSpacing: 40,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 15,),
              Text('Chats',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: 30,),

            ],


          ),
        ),
actions: [
  Container(
      child: CircleAvatar(
          radius: 20,
          child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,)))),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
        radius: 30,
        child: IconButton(onPressed: (){}, icon: Icon(Icons.search,))),

  ),
],
      ),
   body: Padding(
     padding: const EdgeInsets.all(12.0),
     child: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               color: Colors.grey,
               child: Row(
                 children: [
                   IconButton(onPressed: (){}, icon: Icon(Icons.search,)),
                   Text('Search',),
                 ],
               ),
             ),
           ),
           Container(
           height: 100,
           child: ListView.builder(
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context, index) => buildStoryitem(),
             itemCount: 5,
           ),
         ),
           ListView.separated(
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
               itemBuilder: (context, index) =>buildChatItem(),
               separatorBuilder: (context,index)=> SizedBox(height: 20,),
               itemCount: 15,
           ),
         ],

       ),
     ),
   ),


    );
  }
  Widget buildChatItem() => Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blueAccent,
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohammed nasser',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            Row(
              children: [
                Expanded(
                  child: Text('hello my name is mohammed and 21 years old',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10,),
                Text('10:46 PM',),

              ],
            ),
          ],
        ),
      ),

    ],
  );
  Widget buildStoryitem() => Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),
      ),
    ],
  );
}
