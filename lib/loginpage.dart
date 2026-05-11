import 'package:flutter/material.dart';
import 'package:project/listview.dart';
import 'package:project/shreya.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login0 extends StatelessWidget {
    login0({super.key});

    TextEditingController usernameController =TextEditingController();
    TextEditingController passwordController =TextEditingController();

    Future<void> onlogin(BuildContext context) async {
    final pref =await SharedPreferences.getInstance();


    String? savedUsername =pref.getString("username");
    String? savedPassword =pref.getString("password");

    String enteredUsername = usernameController.text;
    String enteredPassword = passwordController.text;

    if (enteredUsername == savedUsername &&
     enteredPassword== savedPassword) {
      Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => Shreya()),
           );
     } else{
      ScaffoldMessenger.of(context).
      showSnackBar(SnackBar(content:
      Text("Invalid username or password")));
     }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: "username"
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password"
            ),
          ),
          ElevatedButton(
          onPressed: () {
          onlogin(context);
          }, 
          child: Text("login"),
     
          



          )
        ],
      ),
      );
  }
}