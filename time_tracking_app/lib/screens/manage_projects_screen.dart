// screens/manage_projects_screen.dart
import 'package:flutter/material.dart';

class ManageProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Projects"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Projects Management Screen")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          // Add project logic here
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Add Project")),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
