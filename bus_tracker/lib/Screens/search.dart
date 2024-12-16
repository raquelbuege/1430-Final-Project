import 'package:bus_tracker/Screens/select_route.dart';
import 'package:bus_tracker/Screens/starting_route.dart';
import 'package:flutter/material.dart';

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top section
          Container(
            color: const Color(0xff226F54),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                inputField(
                  icon: Icons.search,
                  label: "Current Location",
                  color: const Color(0xff87C28E),
                ),
                SizedBox(height: 10),
                inputField(
                  icon: Icons.search,
                  label: "Destination",
                  color: const Color(0xff87C28E),
                  trailingIcon: Icons.swap_vert,
                ),
                SizedBox(height: 10),
                homeButton(),
              ],
            ),
          ),
          // Gray section
          Expanded(
            child: Container(
              color: const Color(0xff35251D),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "Choose on Map" Button
                  grayButton("Choose on Map", const Color(0xff226F54)),
                  SizedBox(height: 10),
                  // "Current Location" Button
                  grayButton("Current Location", const Color(0xff226F54)),
                  SizedBox(height: 10),
                  // "Home" and "Work" Buttons
                  Row(
                    children: [
                      
                      // "Home" button
                      Expanded(
            child: GestureDetector(
              onTap: () {
                // Navigate to another page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectRouteApp()),
                );
              },
                        child: grayButtonWithIcon(
                          label: "Home",
                          icon: Icons.home,
                          color: const Color(0xff226F54),
                        ),
                      ),
                      ),
                      SizedBox(width: 10),
                      // "Work" button
                      Expanded(
                        child: grayButtonWithIcon(
                          label: "Work",
                          icon: Icons.work,
                          color: const Color(0xff226F54),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // "Recent"
                  Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for "Current Location" and "Destination" Inputs
  Widget inputField({
    required IconData icon,
    required String label,
    required Color color,
    IconData? trailingIcon,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          if (trailingIcon != null) Icon(trailingIcon, color: Colors.white),
        ],
      ),
    );
  }

  // "Choose on Map" and "Current Location" Buttons
  Widget grayButton(String label, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }

  // "Home" and "Work" Buttons
  Widget grayButtonWithIcon({
    required String label,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color.fromARGB(255, 255, 255, 255), size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Home Button Below Destination
// Home Button Below Destination
  Widget homeButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Reduced padding
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xff8D6B94),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_back, color: Colors.white, size: 20), // Adjusted icon size
          SizedBox(width: 10),
          Text(
            "Home",
            style: TextStyle(
              fontSize: 15, // Adjusted font size
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
