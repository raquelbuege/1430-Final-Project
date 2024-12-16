import 'package:bus_tracker/Widget/Slider.dart';
import 'package:bus_tracker/Widget/Toggle.dart';
import 'package:flutter/material.dart';
import 'package:bus_tracker/Widget/Dropdown.dart';

double _currentSliderValue = 10;

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({super.key, DropdownButtonExample});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff35251D), // Main background color
      appBar: AppBar(
        backgroundColor: const Color(0xff226F54), // AppBar color
        title: const Text(
          'Sustainability',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              buildSection(
                title: "",
                children: [
                  Container(
                      width: 350,  // Set the width


                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15), 
                      child:Image.asset("assets/graph.png"
                      )
                    )
                  ),
                  SizedBox(
                    height:20,
                  ),
                  buildCardButton(
                      widget: RichText(
                          text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'You Prevented ',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      TextSpan(
                        text: ' 25% ',
                        style: TextStyle(
                            fontSize: 24,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      TextSpan(
                        text: 'more carbon emissions than last week.',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ))),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            text: 'In total, you...',
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        )),
                    ),
                  ),
                  buildCardButton(
                      widget: RichText(
                          text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Offset',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      TextSpan(
                        text: ' 100 ',
                        style: TextStyle(
                            fontSize: 24,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      TextSpan(
                        text: 'lbs of personal carbon footprint ',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ))),
           
                 
                  
               
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection({required String title, required List<Widget> children}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Column(
            children: children,
          ),
        ],
      ),
    );
  }

  Widget buildTransitFaresSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Transit Fares",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xff226F54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "No ticket purchased yet",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8D6B94),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Purchase Fares"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAccountsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Accounts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xff226F54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transit Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8D6B94),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Sign in"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardButton({widget}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 20, 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff226F54),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.fromLTRB(40, 10, 20, 20),
        child: Column(
          children: [Container(child: widget)],
        ),
      ),
    );
  }

  Widget fontWidget(
      {required String label, required String description, widget}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
      child: Container(
        height: 170,

        decoration: BoxDecoration(
          color: const Color(0xff226F54),
          borderRadius: BorderRadius.circular(10),
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(
                  textAlign: TextAlign.left,
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: SizedBox(
                    width: 320,
                    height: 10,
                    child: Text(
                      description,
                      softWrap:
                          true, // Ensures the text wraps within the available width
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Padding(
                  child: Container(child: widget),
                  padding: EdgeInsets.fromLTRB(0, 40, 150, 3),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
