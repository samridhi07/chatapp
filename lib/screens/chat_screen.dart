import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:chatapp/screens/clima/screens/loading_screen.dart';
class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {

                //Implement logout functionality
              }),
        ],
        title: Text('ChatApp',
          style: TextStyle(
            color: Colors.white,
          ),),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: <Widget>[

                    SizedBox(
                      height: 10.0,
                    ),
                    ////////////
                    TextField(
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black54,

                      onChanged: (value){

//here will be the route from text to app
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Location  ',

                      ),
                    ),

                    //////////////////////

                  ],
                ),
              ),
            ),

            ////////////////////////text field 1

            ////////////////////////////////text field 2
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Material(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, LoadingScreen.id);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen()));

                  },

                  child: Text(
                    'Current Location Weather ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, LoadingScreen.id);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen()));

                  },
                  // minWidth: 200.0,
                  // height: 42.0,
                  child: Text(
                    'Get Weather ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

           Container(
             height: 120.0,
           )
          ],
        ),
      ),


      bottomNavigationBar:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              setState(() {

              });

            },
          ),
          IconButton(
            icon: Icon(Icons.group_work),
            onPressed: () {
              //write your script
            },
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: () {
              //write your script
            },
          )
        ], // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}