import 'package:chatapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id ='registration_id';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
                }),
          // title: Text('Registration',
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body : register() ,
      )
    ;
  }
}
class register extends StatefulWidget {

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
   final _auth = FirebaseAuth.instance;

  late String email;
  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
              Container(
                child: Hero(tag:'register',
                  child: SizedBox(
                    child: Image.asset('images/register.gif'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Container(
                child: Expanded(
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: 20.0,
                      ),
                      ////////////
                      TextField(
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black54,
                        keyboardType: TextInputType.emailAddress,

                        onChanged: (value){
                          email = value;

                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          labelText: 'E-mail ',

                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //////////////////////
                      TextField(
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black54,
                        obscureText: true,
                        onChanged: (value){
                          password = value ;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                    ],
                  ),
                ),
              ),

              ////////////////////////text field 1
              //
              // SizedBox(
              //   height: 8.0,
              // ),
              ////////////////////////////////text field 2
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: ()async {

                      try {
                        final newUser = _auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                        print(newUser);
                        if(newUser!=null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                        }
                      }
                      catch(e){
                        print(e);
                      }
                    },
                    minWidth: 100.0,
                    height: 42.0,
                    child:
                    Text(
                      'Register',
                      style: TextStyle(color: Colors.black,
                      fontFamily: 'Unbounded'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  }
}