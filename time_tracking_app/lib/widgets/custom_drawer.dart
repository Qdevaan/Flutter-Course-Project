// widgets/custom_drawer.dart
import 'package:flutter/material.dart';
import '../screens/manage_projects_screen.dart';
import '../screens/manage_tasks_screen.dart';
import '../screens/about_screen.dart';

class CustomDrawer extends StatelessWidget {
  final Function(String) onItemClick;

  const CustomDrawer({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.25,
            width: double.infinity,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Container(
            decoration: _borderedTile(),
            child: ListTile(
              leading: Icon(Icons.folder),
              title: Text("Projects"),
              onTap: () {
                Navigator.pop(context); // Close drawer first
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ManageProjectsScreen(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: _borderedTile(),
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text("Tasks"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ManageTasksScreen(),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1),
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _borderedTile() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.withOpacity(0.4),
          width: 1,
        ),
      ),
    );
  }
}
