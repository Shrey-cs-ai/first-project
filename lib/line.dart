import 'package:flutter/material.dart';

class line extends StatefulWidget {
 

  @override
  State<line> createState() => _lineState();
}

class _lineState extends State<line> {
   final String text ="kjdfkljignkjfuighng "
  "jhgkdskgnjkdhskjhgdfu "
  "shkfdjsndsuh" 
  "jhdsjhgsmbnh" 
   "jhgkdskgnjkdhskjhgdfu "
  "shkfdjsndsuh" 
  "jhdsjhgsmbnh" 
   "jhgkdskgnjkdhskjhgdfu "
  "shkfdjsndsuh" 
  "jhdsjhgsmbnh" 
  "rngdkshsjhgsjhgnuhgjdnjdd" ;
bool _isExpanded =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            text,
          maxLines: _isExpanded ? null :2,
          overflow:_isExpanded ?
          TextOverflow.visible : TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
            setState(() {
              _isExpanded =!_isExpanded;
            });
          },
          child: Text(_isExpanded ?
          "See less" :"See more")),

        ],
            ),
          );
  }
}