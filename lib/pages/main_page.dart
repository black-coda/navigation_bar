import 'package:flutter/material.dart';
import 'package:navigation_bar/routes/routes.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  dynamic result = "The awaiting result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteManager.firstPage,
                );
                // Navigator.push(context, route);
              },
              icon: const Icon(Icons.two_k_sharp)),
          IconButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context).pushNamed(
                    RouteManager.secondPage,
                    arguments: {"name": "solomon"});
                setState(() {
                  result = resultBack;
                });
              },
              icon: const Icon(Icons.real_estate_agent_sharp)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$result"),
          ],
        ),
      ),
    );
  }
}
