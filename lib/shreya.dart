
import 'package:flutter/material.dart';
import 'package:project/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shreya extends StatefulWidget {
  const Shreya({super.key});



          
  @override
  State<Shreya> createState() => _ShreyaState();
}

class _ShreyaState extends State<Shreya> {

  bool _checkboxkovalue = false;
  bool _switchbox =false;

void handlogout(BuildContext context){
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog( //pop a screen with log out button
        title:Text("Log out"),
        content:Text("Are you sure you want to logout"),
        actions:[
          TextButton(
           onPressed: ()  {
            Navigator. pop(context); // it pop out the box of context
           },
           child: Text("Cancel")
           ),
           TextButton(
           onPressed: () async {
            SharedPreferences pref =
                 await SharedPreferences.getInstance(); // to remove info after cancel
                 await pref.remove("username");           
                 await pref.remove("password");    
                  ScaffoldMessenger.of(context).
      showSnackBar(SnackBar(content:Text("logout successfully")));    //show it  in bottom after clicking logout 
          Navigator.push(
            context,
        MaterialPageRoute(builder: (context) => login0()),//open it in login0 page
          );
           },
           child: Text("Yes")
         
       ), 
       ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Row(
        children: [
          Icon(Icons.person,color: Colors.black87,),
          SizedBox(width:9),
          Text("Username"),
        ],
      ),
      ),
      body: Column(
        children: [
          Center(child: Icon(Icons.person,size: 50,color: Colors.black87,)),
          Text("Username"),
          TextField(
            decoration: InputDecoration(
              hintText: "flutterstudent",
              border: OutlineInputBorder(
            
              ),
            ),
          ),


          Text("Email"),
          TextField(
            decoration:InputDecoration(
               hintText: "Enter Email",
              border: OutlineInputBorder(
              ), 
            ) ,
          ),

        
            Row(
              children:[
                Icon(Icons.notification_add),
                Switch(value: _switchbox,
          onChanged: (value) => setState(() {
            _switchbox= value!; 
            }),
          ),
              Padding(
                padding: const EdgeInsets.only(left: 40,),
                child: Text("Notification"),
                
                ), 
              ],
            ),

            Row(
              children:[
                Icon(Icons.dark_mode),
                Switch(value: _switchbox,
          onChanged: (value) => setState(() {
            _switchbox= value!; 
            }),
          ),
              Padding(
                padding: const EdgeInsets.only(left: 40,),
                child: Text("Dark_mode"),
                ), 
              ],
            ),

            Row(
              children: [
                   Checkbox(value: _checkboxkovalue,
          onChanged: (value) => setState(() {
            _checkboxkovalue= value!; 
            }),
          ),
                   Text("I agree to terms and conditions"),
              ],
            ),

            Row(
              children: [
                  Checkbox(value: _checkboxkovalue, 
          onChanged: (value) => setState(() {
            _checkboxkovalue = value!; 
            }),
          ),
                Text("Subscribe to newsletter"),
              ],
            ),

            Row(
              children: [
                ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)
                ), 
                child: Text("Save changes",
                style: TextStyle(
                  color: Colors.black87
                ),)
                ),
              ],
            ),
            

            Row(
              children: [
                ElevatedButton(
                onPressed: () {
handlogout(context); //it call out the context (a box)
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 203, 206, 211))
                ), 
                child: Text("Log out",
                style: TextStyle(
                  color: Colors.black87
                ),)
                ),
              ],
            ),
        ],
      ),      
    );
         
  }
}