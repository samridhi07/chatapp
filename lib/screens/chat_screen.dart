import 'package:chatapp/screens/texting_screen.dart';
import 'package:chatapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
              },),
        ],
        // title: Text('Check the weather',
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.asset('images/weather.gif'),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
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
                    style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          IconButton(
            icon: Icon(Icons.message),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextingScreen()),
              );
              setState(() {
              });

            },
          ),
        ], // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}