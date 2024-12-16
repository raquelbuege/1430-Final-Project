// dropdown_widget.dart

import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownMenu].

const List<String> list = <String>['System', 'Light', 'Dark'];

typedef MenuEntry = DropdownMenuEntry<String>;

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  static final List<MenuEntry> menuEntries = list
      .map<MenuEntry>((String name) => MenuEntry(value: name, label: name))
      .toList();

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 40,
        color: Colors.white,
        child: DropdownMenuTheme(
            data: DropdownMenuThemeData(
              textStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(10)), // Bevel effect
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 252, 252, 252),
                      width: 1), // Border color and width
                ),
                enabledBorder:
                    InputBorder.none, // Ensures no border when enabled
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0), // Adds padding around the text
              ),
            ),
            child: DropdownMenu<String>(
              
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries: menuEntries,
            )));
  }
}
