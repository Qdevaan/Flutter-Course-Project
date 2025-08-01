// screens/about_screen.dart
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "About",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white24, width: 1),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: const [
                Tab(text: "About Project"),
                Tab(text: "About Developer"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // ---------- About Project Tab ----------
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Time Tracking App",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: primaryColor)),
                const SizedBox(height: 10),
                const Text(
                  "This mobile application was developed as the final project for the Coursera course:\n"
                  "Flutter & Dart: Developing iOS and Android Apps\n"
                  "offered by the University of London.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Text("Key Features",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor)),
                const SizedBox(height: 10),
                const Text(
                  "• Time entry tracking with local JSON storage\n"
                  "• Project and Task management\n"
                  "• Manual dark/light theme switching with color customization\n"
                  "• Material 3 UI with clean, responsive design",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Text(
                    "© 2025 Time Tracking App\nDeveloped for Coursera Final Project",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // ---------- About Developer Tab ----------
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/developer.jpg'),
                ),
                const SizedBox(height: 20),
                Text("Muhammad Ahmad",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primaryColor)),
                const SizedBox(height: 10),
                const Text(
                  "BS Computer Science – 7th Semester\n"
                  "COMSATS University Islamabad, Lahore Campus",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text("About the Developer",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor)),
                const SizedBox(height: 10),
                const Text(
                  "A passionate mobile app developer with experience in Flutter, React Native, and AI. Skilled in building responsive UI, managing local data storage, and delivering clean code. Focused on creating practical solutions through thoughtful design and development.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
