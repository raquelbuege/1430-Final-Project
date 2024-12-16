import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: EdgeInsets.fromLTRB(19, 0, 1, 0),
      child:
Transform.scale(
   scale: 1, 
      child:
    Switch(
      value: light,
      activeColor: Color(0xFF8D6B94),
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    )
    )
    );
    
  }
}
