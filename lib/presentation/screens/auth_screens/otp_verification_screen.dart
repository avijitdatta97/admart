import 'package:admart/presentation/utility/app_colors.dart';
import 'package:admart/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            AppLogo(),
            const SizedBox(height: 20),
            Text(
              "Welcome Back",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 4),
            Text(
              "Please Enter Your Email Address",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email Account",
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}
