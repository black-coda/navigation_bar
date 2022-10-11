import 'package:flutter/material.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var textOption = "Text to be changed";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // textController.text;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('TextField on flutter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                controller: emailController,
                keyboard: TextInputType.text,
                label: 'Email',
                hint: 'Enter your email',
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: passwordController,
                keyboard: TextInputType.text,
                label: 'Password',
                hint: 'Enter your password',
                obscure: true,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(passwordController.text),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                textOption,
                style: const TextStyle(fontSize: 30, color: Colors.deepOrange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.keyboard,
    this.obscure = false,
  });

  final TextEditingController controller;
  final String hint;
  final String label;
  final TextInputType keyboard;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.red),
      controller: controller,
      // onChanged: (text) {},
      keyboardType: keyboard,
      // obscureText: true,
      decoration: InputDecoration(
        // icon: Icon(
        //   Icons.sentiment_satisfied_sharp,
        //   size: 20,
        //
        labelStyle: const TextStyle(color: Colors.green),
        label: Text(label),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: hint,
      ),
    );
  }
}
