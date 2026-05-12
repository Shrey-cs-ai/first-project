import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});


  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {


  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController phonenumberController =TextEditingController();
  final _formkey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Username"),
              validator: (value) {
                if (value == null || value.isEmpty){
                  return "please enter email";
                }
                if(value.contains("@")){
                  return "Enter valid Email";
                }
                return null;
              },
            ),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter password";
                }
                if(value.contains("_")){
                  return "Password should include at least one``` _```";
                }
                if (value.length <10){
                  return "password can't be less than 10"; 
                }
                return null;
              },
            ),
            TextFormField(
              controller: phonenumberController,
              decoration: InputDecoration(labelText: "Phone number"),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null){
                  return "Please Enter valid phone number";
                }
                if (value.length!=10){
                  return"Enter atleast phone number";
                }
                if(value.startsWith("98")){
                  return"Start with ```98```";
                }
                return null;
  },
            ),

             Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                if(_formkey.currentState!.validate()){
                   ScaffoldMessenger.of(context).
                  showSnackBar(SnackBar(content:
                  Text("Form submitted successfully")));
                }
              },
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
      ),
      
    );
  }
}