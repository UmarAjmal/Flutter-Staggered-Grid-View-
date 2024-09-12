import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'portfolio_grid_screen.dart';  // Separate screen file
import 'profile_screen.dart';         // Separate screen file
import 'settings_screen.dart';        // Separate screen file

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designer Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  @override
  _PortfolioHomeState createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  int _selectedIndex = 0;

  // List of screens for bottom navigation
  List<Widget> _pages = [
    PortfolioGridScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Designer Portfolio'),
      ),
      body: _pages[_selectedIndex], // Display the selected screen
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blueAccent,
        items: [
          TabItem(icon: Icons.dashboard, title: 'Portfolio'),
          TabItem(icon: Icons.person, title: 'Profile'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
