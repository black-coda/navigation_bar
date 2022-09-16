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

var indexClicked = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = const [
    Center(
      child: Text('Inbox'),
    ),
    Center(
      child: Text('Starred'),
    ),

  ];

  updateState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar"),
        backgroundColor: const Color.fromARGB(255, 8, 17, 30),
      ),
      body: pages[indexClicked],
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              padding: const EdgeInsets.all(0),
              // margin: EdgeInsets.zero,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      radius: 27.0,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Okwharobo Solomon M",
                      style: GoogleFonts.sanchez(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'mondaysolomon01@gmail.com',
                      style: GoogleFonts.sanchez(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppDrawerTile(
                    index: 0,
                    onTap: updateState(0),
                  ),
                  AppDrawerTile(
                    index: 1,
                    onTap: updateState(1),
                  ),
                  AppDrawerTile(
                    index: 2,
                    onTap: updateState(2),
                  ),
                  AppDrawerTile(
                    index: 3,
                    onTap: updateState(3),
                  ),
                  AppDrawerTile(
                    index: 4,
                    onTap: updateState(4),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({super.key, required this.index, required this.onTap});

  final int index;
  final VoidCallback onTap; // or use final voidCallBack onTap

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      selected: indexClicked == index,
      selectedTileColor: Defaults.activeNavSelectedColor,
      leading: Icon(
        Defaults.buttomNavItemIcon[index],
        size: 30,
        color: indexClicked == index
            ? Defaults.buttomNavSelectedColor
            : Defaults.buttomNavColor,
      ),
      title: Text(
        Defaults.buttomNavItemText[index],
        style: GoogleFonts.sanchez(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: indexClicked == index
              ? Defaults.buttomNavSelectedColor
              : Defaults.buttomNavColor,
        ),
      ),
    );
  }
}


