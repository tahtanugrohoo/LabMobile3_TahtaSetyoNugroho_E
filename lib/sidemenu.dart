import 'package:flutter/material.dart';
import 'package:tugas3praktikum2024/homepage.dart'; // Import HomePage
import 'package:tugas3praktikum2024/aboutpage.dart'; // Import AboutPage
import 'package:tugas3praktikum2024/settingspage.dart'; // Import SettingsPage

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header (optional)
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),

          // Home Navigation Item
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),

          // About Navigation Item
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),

          // Settings Navigation Item
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          // Divider (optional)
          const Divider(),

          // Logout Option (can add functionality later)
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // You can add your logout functionality here
              // e.g., clearing shared preferences and navigating to login page
            },
          ),
        ],
      ),
    );
  }
}
