

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AutoKey Screen.dart';
import 'Cesar Screen.dart';
import 'playfair scr.dart';
import 'vigneer Screen.dart';

class NavigationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.menu_outlined,
          size: 40,

          ),
        ],
        centerTitle: true,
        title:Text(
          'Cipher Menu',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),

        ),

        backgroundColor: Colors.deepOrange,
        shadowColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Center(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: RaisedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  CesarScreen()),
                      );
                    },
                      child: Text('Ceaser Cipher'

                          ,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)
                      ),
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: RaisedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PlayfairScreen()),
                      );
                    },color: Colors.deepOrange,
                      child: Text('Playfair Cipher'
                        ,style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24
                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: RaisedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  AutoKeyScreen()),
                      );
                    },color: Colors.deepOrange,
                      child: Text('AutoKey Cipher'
                        ,style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24
                        ),),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: RaisedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  VigenereScreen()),
                      );
                    },color: Colors.deepOrange,
                      child: Text('Vigener Cipher'
                        ,style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24
                        ),),

                    ),

                  ),

                ],


              ),


            ),

          ),
        ],
      ),

    );

  }
}
