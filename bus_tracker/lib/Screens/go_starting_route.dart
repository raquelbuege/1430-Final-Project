import 'package:bus_tracker/Screens/starting_route.dart';
import 'package:bus_tracker/Widget/MapSample.dart';
import 'package:flutter/material.dart';

//NOTE: NOT DONE YET OOP

// after starting route
class GoStartingRoute extends StatelessWidget {
  const GoStartingRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map background
          Container(
            color: Colors.black,
            child: SizedBox(
              height: 900,
              width: 420,
              child: (MapSample()),
            ),
          ),
          // Red pin icon on map
          const Positioned(
            top: 100,
            right: 30,
            child: Icon(
              Icons.location_pin,
              size: 50,
              color: Colors.red,
            ),
          ),
          // Route information panel
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF35251D),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Route buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[700],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Cancel"),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Route details
                    // Travel Info Box
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(40, 10, 0, 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Row(
                          children: [
                            // Left Section with Bus Line and Bubbles (61B, 61C, 61D)
                            Expanded(
                                flex: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to another page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StartingRouteApp()),
                                    );
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Overview - 20 minutes",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          routeStep(Icons.directions_walk,
                                              "Walk", "5"),
                                          dotsVisual(),
                                          routeStep(Icons.directions_bus,
                                              "Transit", "10"),
                                          dotsVisual(),
                                          routeStep(Icons.directions_walk,
                                              "Walk", "5"),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 1, 1, 1),
                                            child: Text(
                                              "Arrive at 1:34 pm",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            // Right Section with Travel Times
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Total Travel Time
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(40, 10, 0, 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Row(
                          children: [
                            // Left Section with Bus Line and Bubbles (61B, 61C, 61D)
                            Expanded(
                                flex: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to another page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StartingRouteApp()),
                                    );
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Walk 5 minutes",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                )),
                            // Right Section with Travel Times
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Total Travel Time
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Departure and stops details
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// "Search" and "leave Now" buttons
Widget actionButton(IconData? icon, String label) {
  return ElevatedButton(
    onPressed: () {
      null;
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF8D6B94),
      minimumSize: Size(120, 50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.white,
            width: 1,
          )),
      padding: icon == null
          ? EdgeInsets.symmetric(horizontal: 30, vertical: 12)
          : EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
    child: icon != null
        ? Row(
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        : Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
  );
}

// "61C" and "61D" Bubbles
Widget busLineBubble(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFF8D6B94),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    ),
  );
}

// Travel Route Steps
Widget routeStep(IconData icon, String label, String number) {
  return Column(
    children: [
      Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          SizedBox(width: 4),
          Text(
            number,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ],
  );
}

// Dots in Travel Route Visual
Widget dotsVisual() {
  return Text(
    "...",
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  );
}
