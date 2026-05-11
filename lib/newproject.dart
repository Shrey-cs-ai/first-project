
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageLogin> {
   bool _isHidden= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 245, 246),

    

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.article_outlined,size: 80,color: const Color.fromARGB(255, 72, 38, 165),)),
            SizedBox(height: 10,),
        
        
        
        Center(
          child: Text("BlogSpace",
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(221, 8, 7, 7),
            fontSize: 30,
          ),
         ),
          ),
          SizedBox(height: 6,),
        
        Center(
        child: Text("login to your account",
        style:TextStyle(
          fontWeight: FontWeight.normal,       
          color: const Color.fromARGB(179, 43, 33, 159),
          fontSize:14,
          ),
        ),
         ),
          SizedBox(height: 10,),
        
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            color: const Color.fromARGB(255, 172, 133, 133),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("USERNAME",
                    style: TextStyle(
                    color:const Color.fromARGB(255, 72, 38, 165),
                    fontSize: 16,
                    ),
                    ),
                  ],
                  ),
                
                  
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your username",
                      prefixIcon: Icon(Icons.person_2_rounded),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                      ),        
                    ),
                  ),
                  SizedBox(height: 20,),
                
                   Row(
                            children: [
                              Text("Password",
                              style: TextStyle(
                              color:const Color.fromARGB(255, 72, 38, 165),
                             fontSize: 16,
                             ),
                             ),
                            ],
                          ),
                        TextField(
                        obscureText: true,
                        decoration: 
                        InputDecoration(
                          hintText: "......",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              _isHidden =!_isHidden;
                            },
                            );
                          },
                           icon:_isHidden?
                        Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                        ),
                        ),
                        SizedBox(height: 20,),
                
                        Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 72, 38, 165),
                        fontSize: 14,
                      ),
                      ),
                      ],
                      ),
                      SizedBox(height: 20,),
              ],
            ),
          ),
        ),
        
              Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()  {},
             style: ButtonStyle(
              backgroundColor:WidgetStatePropertyAll(const Color.fromARGB(255, 72, 38, 165),),
             ),
             child: Text("LOGIN",
             style: TextStyle(
            fontSize: 18,
            color: Colors.white70
             ),))
          ],
          ),
          SizedBox(height: 30,),
        
              Row(mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text("No account?",
              style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              ),
              ),
              Text("SIGN UP",
              style: TextStyle(
              color: const Color.fromARGB(255, 72, 38, 165),
              fontSize: 12,
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