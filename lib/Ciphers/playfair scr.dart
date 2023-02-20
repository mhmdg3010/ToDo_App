import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:untitled1/Ciphers/playfair%20Method.dart';

class PlayfairScreen extends StatefulWidget {

  @override
  State<PlayfairScreen> createState() => _PlayfairScreenState();
}

class _PlayfairScreenState extends State<PlayfairScreen> {
  TextEditingController txt_controller = TextEditingController();
  TextEditingController key_controller = TextEditingController();
  String resultE="" ;
  String resultD="" ;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
            color: Colors.white
        ),

        title: Text('Playfair Cipher',style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,),
        ),

        backgroundColor: Colors.deepOrange,
        actionsIconTheme: IconThemeData.fallback(),
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                        ),
                      ),
                      hintText: "Enter Plain Text",
                    ),
                    controller: txt_controller,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                        ),
                      ),
                      hintText: "Enter Key",

                    ),
                    controller: key_controller,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {
                                  resultE = Playfair().playfairEncrypt(txt_controller.text, key_controller.text);
                                });
                              },
                              child: Text("Encrypt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                              color: Colors.deepOrange,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: TextScroll(resultE,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),
                                selectable: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {
                                  resultD = Playfair().playfairDecrypt(resultE, key_controller.text);
                                });
                              },
                              child: Text("Decrypt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              color: Colors.deepOrange,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red

                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: TextScroll(resultD,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600,),
                                selectable: true,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          SizedBox(
                            width: 170,
                            height: 40,
                            child: RaisedButton(

                              onPressed: () {
                                delete();
                              },
                              child:
                              Text("Delete",style: TextStyle(
                                fontWeight:
                                FontWeight.bold
                                ,fontSize: 20,
                              ),),
                              color: Colors.deepOrange,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void delete() {
    txt_controller.clear();
    key_controller.clear();
    setState(() {
      resultE = "";
      resultD="";
    });
  }
}
