import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(String) onItemClick;

  const CustomDrawer({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      child: Column(
        children: [
          // Top 25% "Menu" section
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

          // List tiles with bottom borders
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.4),
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.folder),
              title: Text("Projects"),
              onTap: () => onItemClick("Projects pressed"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.4),
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text("Tasks"),
              onTap: () => onItemClick("Tasks pressed"),
            ),
          ),

          // Spacer pushes About to the bottom
          Spacer(),

          // About with top border
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.withOpacity(0.4),
                  width: 1,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: () => onItemClick("About pressed"),
            ),
          ),
        ],
      ),
    );
  }
}
