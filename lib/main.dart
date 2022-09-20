// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:navigation_bar/default/defaults.dart';

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
  var text = 'None Clicked';

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
          key: drawerKey,
          endDrawer: const Drawer(),
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    text = "Configure settings";
                  });
                },
                icon: const Icon(Icons.construction),
                splashRadius: 20,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    text = "AC unit settings";
                  });
                },
                icon: const Icon(Icons.ac_unit_sharp),
                splashRadius: 20,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    drawerKey.currentState?.openEndDrawer();
                  });
                },
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                splashRadius: 20,
              )
            ],
            backgroundColor: Colors.blue[100],
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    text = 'Homepage';
                  });
                },
                icon: const Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            title: const Text('Flutter'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.cloud_outlined),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.brightness_5_sharp),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Cloudy --$text"),
              ),
              Center(
                child: Text("Rainy --$text"),
              ),
              Center(
                child: Text("Settings --$text"),
              )
            ],
          )),
    );
  }
}
