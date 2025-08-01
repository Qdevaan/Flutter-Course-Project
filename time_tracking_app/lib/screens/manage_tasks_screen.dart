// screens/manage_tasks_screen.dart
import 'package:flutter/material.dart';

class ManageTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Tasks"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Tasks Management Screen")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          // Add task logic here
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Add Task")),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
