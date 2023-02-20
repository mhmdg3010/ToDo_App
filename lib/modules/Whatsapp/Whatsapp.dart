
import 'package:flutter/material.dart';

class WApp extends StatelessWidget {
  const WApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            Text(
              'WhatsApp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.wifi),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        'Search',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStory(),
                  itemCount: 10,
                  separatorBuilder:(context,index)=> SizedBox(height: 20,),

                ),
              ),
              ListView.separated(
                physics:NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChat(),
                itemCount: 20,
                separatorBuilder:(context,index)=> SizedBox(height: 20,),

              ),



            ],
          ),
        ),
      ),
    );
  }
  Widget buildStory ()=>  Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              Text(
                'Mustafa Ali ahmed ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),



    ],
  );
  Widget buildChat ()=> Column(
    children: [
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: 60,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mustafa Ali ahmed ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is Mustafa Ali ahmed ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '02:43 PM',
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    ],
  );
}
