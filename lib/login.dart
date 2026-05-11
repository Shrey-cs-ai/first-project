import 'package:flutter/material.dart';

class NewFile extends StatefulWidget {
  const NewFile({super.key});

  @override
  State<NewFile> createState() => _GanejuState();
}


class _GanejuState extends State<NewFile> {
  bool _isHidden= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Icon(Icons.person_2, size: 30 ,color:const Color.fromARGB(255, 6, 116, 206))),

          Center(
            child: Text("login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            ),
          ),



          
          Center(
            child: Text("Please enter your credential to login",
            style: TextStyle(
              fontWeight: FontWeight.w100
            ),
                    ),
          ),

          Row(
            children: [
              Text("Username"),
            ],
              ),
               TextField(
              decoration:InputDecoration(
                hintText: "Enter your username",
                labelText: "Username",
                prefixIcon: Icon(Icons.person_2),
                border: OutlineInputBorder(
                ),
              ) ,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Password")
                  ],
                ),
              ),
              TextField(
              obscureText: true,
              decoration: 
              InputDecoration(
                hintText: "Enter your password",
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    _isHidden = !_isHidden;
                  });
                },
                 icon:_isHidden?
              Icon(Icons.visibility_off) : Icon(Icons.visibility)),
              ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Text("forget password?")
                ],
              ),

              

                 Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent
                ),
              ), 
              child: Text("Submit",
              style: TextStyle(
              color:Colors.white70
              ),
              ),
              ),
            ],
          ),    
            ],

          ),
      );
    
  }
}
