import 'package:flutter/material.dart';
import 'widgets/custom_drawer.dart'; // Import the drawer

void main() {
  runApp(TimeTrackingApp());
}

class TimeTrackingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracking App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Time Tracking App", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
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
              tabs: [
                Tab(text: "All Entries"),
                Tab(text: "Group by Projects"),
              ],
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(onItemClick: _showMessage),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("All Entries Page")),
          Center(child: Text("Group by Projects Page")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => _showMessage("Add button pressed"),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
