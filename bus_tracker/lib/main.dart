import 'dart:convert';
import 'package:bus_tracker/Screens/planet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'bus_schedule_model.dart';
import 'Screens/home.dart';
import 'Screens/profile.dart';
import 'Screens/search.dart';
import 'Screens/ticket_screen.dart';
import 'Screens/settings.dart';

void main() {
  runApp(BusScheduleApp());
}

class BusScheduleApp extends StatelessWidget {
  const BusScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Schedule',
   

      //  replace this line with your imported screen
      home: PersistentBottomNavBar(),
    );
  }
}
class PersistentBottomNavBar extends StatefulWidget {
  @override
  _PersistentBottomNavBarState createState() => _PersistentBottomNavBarState();
}

class _PersistentBottomNavBarState extends State<PersistentBottomNavBar> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    Home(),
    TicketPage(),
    ProfilePage(),
    PlanetPage(),
    SettingsPage(),
    
  ];

  // Function to handle navigation taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Show the selected page
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
   backgroundColor: Color(0xFF226F54), // Set the background color
        selectedItemColor: Color(0xFF87C28E), // Color of the selected item
        unselectedItemColor: Colors.white, // Color of the unselected items
          iconSize: 32.0, // Increase the icon size here

        type: BottomNavigationBarType.fixed, // Ensure a fixed layout
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.energy_savings_leaf_outlined),
            label: 'Planet',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// Individual Pages
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TicketScreen();
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen();
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SettingsScreen();
  }
}


class PlanetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return PlanetScreen();
  }
}


// class BusScheduleScreen extends StatelessWidget {
//   const BusScheduleScreen({super.key});

//   Future<List<BusRoute>> loadBusRoutes() async {
//     final String response =
//         await rootBundle.loadString('assets/bus_schedule.json');
//     final List<dynamic> data = json.decode(response)['routes'];
//     return data.map((json) => BusRoute.fromJson(json)).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bus Schedule'),
//       ),
//       body: FutureBuilder<List<BusRoute>>(
//         future: loadBusRoutes(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No data found'));
//           }

//           final routes = snapshot.data!;
//           return ListView.builder(
//             itemCount: routes.length,
//             itemBuilder: (context, index) {
//               final route = routes[index];
//               return ExpansionTile(
//                 title: Text(route.routeName),
//                 children: route.stops.map((stop) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: ExpansionTile(
//                       title: Text(stop.stopName),
//                       children: stop.times.map((time) {
//                         return ListTile(
//                           title: ElevatedButton(
//                             onPressed: () {
//                               // Optional: add functionality here if needed
//                             },
//                             child: Text(time),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   );
//                 }).toList(),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
