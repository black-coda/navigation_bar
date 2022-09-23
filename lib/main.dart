import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final snackBar = SnackBar(
    backgroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    content: Row(
      children: const [
        Icon(Icons.emoji_emotions_sharp),
        SizedBox(
          width: 20,
        ),
        Text(
          "Suceesfull",
          style: TextStyle(color: Colors.black87),
        )
      ],
    ),
  );

  String location = 'None Selected yet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[800],
                // shape: ButtonStyle()
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Add")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      icon: const Icon(Icons.dangerous_sharp),
                      iconColor: Colors.red,
                      title: const Text("Delete"),
                      content:
                          const Text("Are you sure you wannna delete this"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                                context); // added to remove alertbox after the text is clicked
                          },
                          child: const Text('No'),
                        )
                      ],
                    );
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange[800],
                // shape: ButtonStyle()
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.delete_sharp),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Add")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // wait for user to pick a option
                // we are assigning whatever value the use picks to the variable loc using
                // the Navigator.pop
                final String loc = await showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text("Choose your location"),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, "America");
                          },
                          child: const Text("America"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, "Nigeria");
                          },
                          child: const Text("Nigeria"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, "UK");
                          },
                          child: const Text("UK"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, "Estonia");
                          },
                          child: const Text("Estonia"),
                        ),
                      ],
                    );
                  },
                );
                setState(() {
                  location = loc;
                }); // it can also be called in them individually
              },
              child: const Text(
                "Stream Location",
              ),
            ),
            Text(location),
          ],
        ),
      ),
    );
  }
}
