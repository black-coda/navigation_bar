import 'package:flutter/material.dart';
import 'package:navigation_bar/routes/routes.dart';

// import 'pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Testing Routes",
      // theme: ThemeData(
      //     primaryColor: Colors.deepPurple,
      //     scaffoldBackgroundColor: const Color.fromARGB(255, 227, 106, 199),
      //     fontFamily: "Times New Roman",
      //     appBarTheme: const AppBarTheme(color: Colors.deepPurple)),
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        primaryColor: Colors.black87,
        backgroundColor: Colors.blueGrey,
        primaryColorDark: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black87,
        secondaryHeaderColor: Colors.red,
      ),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
