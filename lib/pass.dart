import 'package:flutter/material.dart';

class VisibilityToggle extends StatefulWidget {
  const VisibilityToggle({super.key});

  @override
  State<VisibilityToggle> createState() => _VisibilityToggleState();
}

class _VisibilityToggleState extends State<VisibilityToggle> {
  bool _isHidden= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        obscureText: _isHidden,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isHidden=!_isHidden;
              });
            }, 
            icon:_isHidden ?
            Icon(Icons.visibility_off) : Icon(Icons.visibility)),
      ),
    ),
    );
  }
}


