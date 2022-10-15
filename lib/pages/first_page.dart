import 'package:flutter/material.dart';
import 'package:navigation_bar/routes/routes.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("First page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Second Page"),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.forward_to_inbox_sharp)),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteManager.secondPage);

                  },
                  icon: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),
        ));
  }
}
