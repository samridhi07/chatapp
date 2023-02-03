import 'package:chatapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  final String id='forgot_screen';
  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body: Padding(
       padding: EdgeInsets.all(30),
       child: Expanded(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Container(
               padding: EdgeInsets.all(30),
               child: TextField(
                 textAlign: TextAlign.center,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'Current password',
                 ),
               ),
             ),
             Container(
               padding: EdgeInsets.all(30.0),
               child: TextField(
                 textAlign: TextAlign.center,
                 // onChanged: (value) {
                 //   password = value;
                 // },
                 obscureText: true,
                 // controller: passwordController,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'New password',
                 ),
               ),
             ),
             Container(
               padding: EdgeInsets.all(30),
               child: TextField(
                 textAlign: TextAlign.center,
                 obscureText: true,
                   cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    //InputDecoration(
                   //   border: OutlineInputBorder(
                   //   ),
                     hintText: 'Repeat password',
                   ),
               ),
             ),
             TextButton(
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                 //forgot password screen
               },
               child: Text(
                 'Change Password',
                 style: TextStyle(
                     color: Colors.white,
                     fontFamily: 'Unbounded',
                     fontWeight: FontWeight.bold
                 )
                 ,
               ),
             ),
             // Container(
             //   height: 50,
             //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
             //   child: ElevatedButton(
             //       child: Text('Login',
             //         // style: TextStyle(
             //         //     color: Colors.green.shade400),
             //       ),
             //       onPressed: () async {
             //         try {
             //           final user = await _auth.signInWithEmailAndPassword(
             //               email: email!, password: password!);
             //           if (user != null) {
             //             Navigator.pushNamed(context, ChatScreen.id);
             //           }
             //
             //           setState(() {
             //           });
             //         } catch (e) {
             //           print(e);
             //         }
             //       }
             //   ),
             // ),
           //   Row(
           //     children: <Widget>[
           //       //if the user does not have aa account then -> move to registration screen
           //       const Text('Does not have account?'),
           //       TextButton(
           //         child: const Text(
           //           'Sign Up ',
           //           style: TextStyle(fontSize: 20),
           //         ),
           //         onPressed: () {
           //           Navigator.push(context, MaterialPageRoute(
           //               builder: (context) => RegistrationScreen()));
           //         },
           //       )
           //     ],
           //     mainAxisAlignment: MainAxisAlignment.center,
           //   ),
           // ],
      ],
         ),),),
    );
  }
}
