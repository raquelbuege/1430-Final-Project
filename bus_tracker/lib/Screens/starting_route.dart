import 'package:bus_tracker/Screens/go_starting_route.dart';
import 'package:bus_tracker/Widget/MapSample.dart';
import 'package:flutter/material.dart';

// Home Screen
class StartingRouteApp extends StatelessWidget {
  const StartingRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Used this for the theme https://docs.flutter.dev/cookbook/design/themes

      home: const StartingRouteScreen(),
    );
  }
}

class StartingRouteScreen extends StatelessWidget {
  const StartingRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map background
          Positioned(
            bottom: 560,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                height: 260,
                width: 420,
                child: (MapSample()),
              ),
            ),
          ),

          // Red pin icon on map

          // Route information panel
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 570,
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
                          padding: EdgeInsets.fromLTRB(1, 15, 1, 1),
                          child: GestureDetector(
                              onTap: () {
                                // Navigate to another page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GoStartingRoute()),
                                );
                              },
                              child: actionButton(
                                  context, Icons.arrow_back, "Other Route")),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 15, 1, 1),
                          child: GestureDetector(
                              onTap: () {
                                // Navigate to another page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GoStartingRoute()),
                                );
                              },
                              child: actionButton(
                                  context, Icons.arrow_forward, "GO")),
                        )
                      ],
                    ),
                    SizedBox(height: 50),

                    // Route details
                    // Travel Info Box
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Row(
                          children: [
                            // Left Section with Bus Line and Bubbles (61B, 61C, 61D)
                            Expanded(
                                flex: 1,
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
                                        "61B",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          busLineBubble("61C"),
                                          SizedBox(width: 8),
                                          busLineBubble("61D"),
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
                                  Text(
                                    "20 minutes",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  // Travel Steps
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      routeStep(
                                          Icons.directions_walk, "Walk", "5"),
                                      dotsVisual(),
                                      routeStep(Icons.directions_bus, "Transit",
                                          "10"),
                                      dotsVisual(),
                                      routeStep(
                                          Icons.directions_walk, "Walk", "5"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  // Arrival Time
                                  Text(
                                    "Arrive at 1:34pm",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 60,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(children: [
                            const Icon(Icons.directions_walk,
                                color: Colors.white, size: 30),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text('Walk',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(190, 1, 1, 1),
                              child: Text('by 2 min',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ])),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 10, 1, 1),
                        decoration: BoxDecoration(
                          color: const Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 90,
                        child: Row(
                          children: [
                            // Left Section with Bus Line and Bubbles (61B, 61C, 61D)
                            Expanded(
                                flex: 1,
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
                                      Row(
                                        children: [
                                          Text(
                                            "61B",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                50, 3, 2, 1),
                                            child: Text(
                                              "Departed on",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Column(children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24, 3, 2, 1),
                                              child: Text(
                                                "1:25 pm",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24, 3, 2, 1),
                                              child: Text(
                                                "by 2 minutes",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ]),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        children: [
                                          busLineBubble("61C"),
                                          SizedBox(width: 8),
                                          busLineBubble("61D"),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            // Right Section with Travel Times
                          ],
                        ),
                      ),
                    ),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 20, 1, 1),
                        child: Container(
                          height: 80,
                          child: CustomPaint(
                            painter: DottedVerticalDividerPainter(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF8D6B94),
                              minimumSize: Size(100, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 6)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GoStartingRoute()),
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 1, 1, 1),
                                child: Text(
                                  "5 Stops",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 150),
                              Icon(Icons.arrow_drop_down, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      
                    ]),
                  
                  
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

// "Search" and "leave Now" buttons
Widget actionButton(context, IconData? icon, String label) {
  return ElevatedButton(
    // child:GestureDetector(
    //  onTap: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => const Start()),
    //         );
    //       },
    // ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF8D6B94),
      minimumSize: Size(120, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: icon == null
          ? EdgeInsets.symmetric(horizontal: 30, vertical: 12)
          : EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GoStartingRoute()),
      );
    },
    child: icon != null
        ? Row(
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 5),
              Text(
                label,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )
        : Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
  );
}

class DottedVerticalDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color =
          const Color.fromARGB(255, 255, 255, 255) // Color of the dotted line
      ..strokeCap = StrokeCap.round // To make the dots round
      ..strokeWidth = 0.5; // The thickness of each dot

    final double dashWidth = 1.0; // Width of each dot
    final double dashSpace = 5.0; // Space between the dots
    double startY = 0.0;

    // Draw the dots vertically
    while (startY < size.height) {
      canvas.drawCircle(
          Offset(size.width / 2, startY), 2.0, paint); // Draw each dot
      startY += dashWidth + dashSpace; // Move to the next dot position
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
