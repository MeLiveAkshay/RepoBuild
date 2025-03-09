import 'package:flutter/material.dart';
import 'package:repobuild/screen/contact_screen.dart';
import 'package:repobuild/screen/eduction_screen.dart';
import 'package:repobuild/screen/profile_screen.dart';
import 'package:repobuild/screen/project_screen.dart';
import 'package:repobuild/screen/skill_screen.dart';
import 'package:repobuild/screen/social_media_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ProfileScreen(),
    const ProjectsScreen(),
    const EducationScreen(),
    const SkillsScreen(),
    const SocialMediaScreen(),
    const ContactScreen(),
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
        // ✅ Corrected placement of AppBar
        title: const Text(
          "Portfolio App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white, // Text color
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, // Background color
        elevation: 4, // Adds shadow
        shadowColor: Colors.black45,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Add navigation to settings or any other action
            },
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure all items are visible
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Projects"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Education"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Skills"),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: "Social"),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contact",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
