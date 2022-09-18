// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/default/defaults.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 1;
  final pages = const [
    Center(
      child: Text("Indox"),
    ),
    Center(
      child: Text("Starred"),
    ),
    Center(
      child: Text("Sent"),
    ),
    Center(
      child: Text("Draft"),
    ),
    Center(
      child: Text("Trash"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 17, 30),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50.0,
        selectedItemColor: Defaults.activeNavSelectedColor,
        unselectedItemColor: Defaults.bottomNavSelectedColor,
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: const Color(0xff204878ff),
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.red[300],
              icon: Icon(
                Defaults.bottomNavItemIcon[0],
                color: Colors.white,
              ),
              label: Defaults.bottomNavItemText[0]),
          BottomNavigationBarItem(
              backgroundColor: const Color.fromARGB(255, 7, 134, 128),
              icon: Icon(Defaults.bottomNavItemIcon[1], color: Colors.white),
              label: Defaults.bottomNavItemText[1]),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue[300],
              icon: Icon(Defaults.bottomNavItemIcon[2], color: Colors.white),
              label: Defaults.bottomNavItemText[2]),
          BottomNavigationBarItem(
              backgroundColor: Colors.green[300],
              icon: Icon(Defaults.bottomNavItemIcon[3], color: Colors.white),
              label: Defaults.bottomNavItemText[3]),
          BottomNavigationBarItem(
              backgroundColor: Colors.yellow[300],
              icon: Icon(Defaults.bottomNavItemIcon[4], color: Colors.white),
              label: Defaults.bottomNavItemText[4]),
        ],
      ),
      body: pages[indexClicked],
    );
  }
}
