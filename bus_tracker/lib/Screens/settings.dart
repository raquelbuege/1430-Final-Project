import 'package:bus_tracker/Widget/Slider.dart';
import 'package:bus_tracker/Widget/Toggle.dart';
import 'package:flutter/material.dart';
import 'package:bus_tracker/Widget/Dropdown.dart';
  double _currentSliderValue = 10;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, DropdownButtonExample});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff35251D), // Main background color
      appBar: AppBar(
        backgroundColor: const Color(0xff226F54), // AppBar color
        title: const Text(
          'Settings and Accessibility',
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
                buildCardButton(
                  label: "Select App Theme",
                  description:
                      'Select your preferred appearance for the app: light mode, dark mode, or system mode.',
                  widget: DropdownWidget(),
                ),
                buildCardButton(
                    label: "Enable Voice Assistance",
                    description:
                        'Activate voice-guided navigation and commands for a hands-free app experience by holding the power button.',
                    widget: SwitchExample()),
                buildCardButton(
                    label: "Customize Notification",
                    description:
                        'Stay updated with real-time alerts for service changes, trip reminders, and important updates.',
                    widget:
                    Padding(padding: EdgeInsets.fromLTRB(20,15,3,4),
                    child: Icon(Icons.arrow_forward,
                    size: 40,
                    color: Colors.white)),
                ),
                  buildCardButton(
                    label: "Enable Screen Reader",
                    description:
                        'Turn on screen reader compatibility to have text and app content read aloud for better accessibility.',
                    widget:SwitchExample()
                    
                ),
                    fontWidget(
                    label: "Font Size Adjustment",
                    description:
                        'Turn on screen reader compatibility to have text and app content read aloud for better accessibility.',
                  
                    widget: Slider( value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
        
        },)
                ),
                   buildCardButton(
                    label: "Privacy",
                    description:
                        'Manage your data preferences, including location tracking and data sharing',
                    widget:
                    Padding(padding: EdgeInsets.fromLTRB(50,15,3,4),
                    child: Icon(Icons.arrow_forward,
                    size: 40,
                    color: Colors.white)),
                ),
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

  Widget buildCardButton(
      {required String label, required String description, widget}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 0, 10, 40),
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: const Color(0xff226F54),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 3, 0),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 0, 35),
                  child: SizedBox(
                    width: 240,
                    height: 10,
                    child: Text(
                      description,
                      softWrap:
                          true, // Ensures the text wraps within the available width
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(child: widget)
              ],
            )
          ],
        ),
      ),
    );
  }
    Widget fontWidget(
      {required String label, required String description, widget}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 4, 20),
      child: Container(
        

        decoration: BoxDecoration(
          color: const Color(0xff226F54),
          borderRadius: BorderRadius.circular(10),
        ),
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
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  child: Container(child: widget), padding: EdgeInsets.fromLTRB(4, 10, 4, 3),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

