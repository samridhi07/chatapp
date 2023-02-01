import 'package:flutter/material.dart';
import 'package:chatapp/screens/login_screen.dart';
import 'package:chatapp/screens/registration_screen.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  /////////////
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  //late AnimationController animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: <Widget>[
      //     IconButton(
      //         onPressed: () {},
      //         icon: new Icon(
      //           Icons.more_vert,
      //         )),
      //   ],
      //   title: Center(
      //     child: Text(
      //       'Home Page',
      //       style: TextStyle(
      //         color: Colors.black54,
      //         fontStyle: FontStyle.italic,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.blueGrey,
      // ),
      backgroundColor: Colors.brown.withOpacity(controller.value),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Hero(tag: 'logo',
                child: SizedBox(
                  child: Image.asset('images/welcome.gif'),
                  height: 500,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () async {
                            Navigator.pushNamed(context, LoginScreen.id);
                          },
                          minWidth: 100.0,
                          height: 50.0,
                          child: Text(
                            'LogIn',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, LoginScreen.id);
                    //   },
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //         border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //         ),
                    //         labelText: 'LogIn',
                    //         labelStyle: TextStyle(
                    //           color: Colors.grey,
                    //           fontSize: 20.0,
                    //           fontStyle: FontStyle.italic,
                    //           height: 1.0,
                    //         )),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () async {
                            Navigator.pushNamed(context, RegistrationScreen.id);
                          },
                          minWidth: 100.0,
                          height: 50.0,
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black,
                              // TextButton(
                              //     onPressed: () {
                              //       Navigator.pushNamed(context, RegistrationScreen.id);
                              //     },
                              //     child: Text('Register',
                              //       style: TextStyle(
                              //           color: Colors.green
                              //
                              //     ),
                              //     ),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
