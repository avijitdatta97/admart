import 'package:admart/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class EmailVarificationScreen extends StatefulWidget {
  const EmailVarificationScreen({super.key});

  @override
  State<EmailVarificationScreen> createState() => _EmailVarificationScreenState();
}

class _EmailVarificationScreenState extends State<EmailVarificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppLogo(),
          const SizedBox(height: 20),
          const Text("Welcome Back"),
          const SizedBox(height: 4),
          const Text("Please Enter Your Email Address"),
          const SizedBox(height: 16),
          TextField(),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: (){}, child: const Text("Next")),
        ],
      ),,
    );
  }
}
