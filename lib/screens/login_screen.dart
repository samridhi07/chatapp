import 'package:flutter/material.dart';
import 'package:chatapp/screens/chat_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';


class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: wid()

    );
  }
}

class wid extends StatefulWidget {
  const wid({Key? key}) : super(key: key);

  @override
  State<wid> createState() => _widState();
}
//for the  widget and the login page
class _widState extends State<wid> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(2),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(tag: 'logiin', child: Image.asset('images/login.gif'),
            ),
            Expanded(
              child: Container(
                child: null,
              ),
            ),
               Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20,
                    color: Colors.black,
                    ),
                  )),

            Container(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter your username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
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
                //forgot password screen
              },
              child:  Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
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
                onPressed: () {
                  // print(nameController.text);
                  // print(passwordController.text);

                  Navigator.pushNamed(context, ChatScreen.id);
                },
              ),
            ),
            Row(
              children: <Widget>[
                //if the user does not have aa account then -> move to registration screen
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Register ',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),),);
  }
}