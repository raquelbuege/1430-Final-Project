import 'dart:io';
import 'package:bus_tracker/Widget/MapSample.dart';
import 'package:map/map.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:bus_tracker/Screens/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 62, 80, 198),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: <Widget>[
        Column(children: [
          Stack(
            children: [
              // Stack(

              // )
              SizedBox(
                height: 377,
                width: 420,
                child: (MapSample()),
              ),

              /// Home page
              Positioned(
                top: 320,
                right: 45,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0.0, 0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchApp()),
                      );
                    },
                    child: Card(
                      color: Color(0xFF226F54),
                      margin: EdgeInsets.zero,
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: const BoxDecoration(
                          color: Color(0xFF226F54),
                          //https://www.dhiwise.com/post/a-quick-look-on-the-art-of-flutter-rounded-container
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                        ),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Icon(Icons.search, size: 30)),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 120.0, 0),
                                child: Text('Where To?',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Icon(Icons.house, size: 30)),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 370,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFF35251D),
                    //https://www.dhiwise.com/post/a-quick-look-on-the-art-of-flutter-rounded-container
                  ),
                  height: 20,
                  width: 415,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF35251D),
              //https://www.dhiwise.com/post/a-quick-look-on-the-art-of-flutter-rounded-container
            ),
            height: 447,
            width: 500,
            child: ListView(children: <Widget>[
              Column(children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF226F54),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.fromLTRB(45, 20, 10, 30),
                      height: 60,
                      width: 110,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                          child: Center(
                            child: const Row(children: [
                              Icon(Icons.directions_bus, size: 30),
                              Text('Transit',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF226F54),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      margin: const EdgeInsets.fromLTRB(15, 20, 10, 30),
                      height: 60,
                      width: 50,
                      child: const Icon(Icons.directions_walk, size: 30),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                        height: 60,
                        width: 50,
                        child: const Icon(Icons.directions_car, size: 30)),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF226F54),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                        height: 60,
                        width: 50,
                        child: const Icon(Icons.directions_bike, size: 30)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  width: 320,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF226F54),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(42, 10, 0.0, 0),
                          child: Text(
                            '61C',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 0, 0.0, 0),
                          child: Text(
                            'Home',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(80, 0, 0.0, 0),
                        child: const Icon(Icons.directions_bus)),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 33.0, 0),
                          child: Text(
                            '23',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0.0, 0),
                          child: Text(
                            'Minutes',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(height: 17),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: 320,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF226F54),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(42, 10, 0.0, 0),
                          child: Text(
                            '71B',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 0, 0.0, 0),
                          child: Text(
                            'Work',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(80, 0, 0.0, 0),
                        child: const Icon(Icons.directions_bus)),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 33.0, 0),
                          child: Text(
                            '15',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0.0, 0),
                          child: Text(
                            'Minutes',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: 320,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF226F54),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(42, 10, 0.0, 0),
                          child: Text(
                            '61B',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 0, 0.0, 0),
                          child: Text(
                            'Work',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(80, 0, 0.0, 0),
                        child: const Icon(Icons.directions_bus)),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 33.0, 0),
                          child: Text(
                            '14',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0.0, 0),
                          child: Text(
                            'Minutes',
                            //  https://www.educative.io/answers/how-to-make-text-bold-in-flutter
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                )
              ]),
            ]),
          ),
        ]),

        /// Notifications page
      ][currentPageIndex],
    );
  }
}
