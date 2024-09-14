import 'package:flutter/material.dart';

import '../../widgets/app_logo.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _addressTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  const AppLogo(),
                  const SizedBox(height: 20),
                  Text(
                    "Complete Profile",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Get Started With Us by Providing Your Details",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: const InputDecoration(
                      hintText: "First Name",
                    ),
                    validator: (String? value) {
                      if(value?.trim().isEmpty ?? true){
                        return 'Enter your first name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: const InputDecoration(
                      hintText: "Last Name",
                    ),
                    validator: (String? value) {
                      if(value?.trim().isEmpty ?? true){
                        return 'Enter your last name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _mobileTEController,
                    decoration: const InputDecoration(
                      hintText: "Mobile",
                    ),
                    validator: (String? value) {
                      if(value?.trim().isEmpty ?? true){
                        return 'Enter your mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _cityTEController,
                    decoration: const InputDecoration(
                      hintText: "City",
                    ),
                    validator: (String? value) {
                      if(value?.trim().isEmpty ?? true){
                        return 'Enter your city';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _addressTEController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      hintText: "Shipping Address",
                    ),
                    validator: (String? value) {
                    if(value?.trim().isEmpty ?? true){
                      return 'Enter your address';
                    }
                    return null;
                  },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("Next")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
