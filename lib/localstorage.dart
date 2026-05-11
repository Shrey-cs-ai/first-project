import 'package:flutter/material.dart';
import 'package:project/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Localstorage extends StatelessWidget {
  Localstorage({super.key});

  TextEditingController usernameController =TextEditingController();
    TextEditingController passwordController =TextEditingController();

    Future<void> onSubmit(BuildContext context) async {
       final pref =await SharedPreferences.getInstance();

       await pref.setString("username", usernameController.text);
       await pref.setString("password", passwordController.text);

      ScaffoldMessenger.of(context).
      showSnackBar(SnackBar(content:Text("Register successfully")));

        Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => login0()),
           );
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
          onSubmit(context);
          }, 
          child: Text("register"),
          )
        ],
      )
      );

  }
}