// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:navigation_bar/routes/routes.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String? name;

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Home Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteManager.homePage);
                },
                child: const Text("First Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "Hello World");
                },
                child: Text("Hi Mastuer ${widget.name} go bac to main page")),
          ],
        ),
      ),
    );
  }
}
