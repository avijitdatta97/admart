import 'package:admart/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  TextEditingController _firstNameTEController = TextEditingController();
  TextEditingController _lastNameTEController = TextEditingController();
  TextEditingController _reviewTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackGroundColor,
      appBar: AppBar(title: const Text('Create Review'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstNameTEController,
                decoration: const InputDecoration(
                  hintText: 'First Name'
                ),
                validator: (String? value) {
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _lastNameTEController,
                decoration: const InputDecoration(
                    hintText: 'Last Name'
                ),
                validator: (String? value) {
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your last name';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16,),
              TextFormField(
                controller: _reviewTEController,
                maxLines: 7,
                decoration: const InputDecoration(
                    hintText: 'Write Review',

                ),
                validator: (String? value) {
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your review';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32,),
              ElevatedButton(onPressed: (){}, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
