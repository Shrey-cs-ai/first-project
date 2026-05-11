import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
   Listview({super.key});

  final List<Map<String,  dynamic>> students =[
    {"name":"abc","age":20,"grade":"A+"},
    {"name":"efg","age":15,"grade":"B+"},
    {"name":"xyz","age":30,"grade":"A"},
    {"name":"pqr","age":25,"grade":"C+"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(  
                child: Text(students[index]["name"][0]),
              ),
              title: Text(students[index]["name"]),
              subtitle: Text(students[index]["age"].toString()
              ),
              trailing: Text(students[index]["grade"]),
            ),
          );
      }),
   );
}
}