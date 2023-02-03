import 'package:chatapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/screens/chat_screen.dart';
import 'registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatapp/screens/forgot_screen.dart';
class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
        },
          icon: Icon(Icons.arrow_back),
      ),),
      backgroundColor: Colors.black,
      body: wid()

    );
  }
}

class wid extends StatefulWidget {

  @override
  State<wid> createState() => _widState();
}
//for the  widget and the login page
class _widState extends State<wid> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    String? email;
    String? password;
    return Padding(

      padding: const EdgeInsets.all(2),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                  child: Hero(tag: 'login',
                    child: SizedBox(
                      child: Image.asset('images/login.gif'),
                      height: 500,
                    ),)
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Unbounded',
                  ),
                )),

            Container(
              padding: const EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 10.0,
                      )
                  ),
                  labelText: 'User Name',
                  hintText: 'Enter your username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotScreen()));
                //forgot password screen
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )
                ,
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                  child: Text('Login',
                    // style: TextStyle(
                    //     color: Colors.green.shade400),
                  ),
                  onPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email!, password: password!);
                      if (user != null) {
                        Navigator.pushNamed(context, ChatScreen.id);
                      }

                      setState(() {
                      });
                    } catch (e) {
                      print(e);
                    }
                  }
              ),
            ),
            Row(
              children: <Widget>[
                //if the user does not have aa account then -> move to registration screen
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up ',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RegistrationScreen()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),),);
  }
}