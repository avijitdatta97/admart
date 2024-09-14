import 'package:admart/presentation/screens/auth_screens/complete_profile_screen.dart';
import 'package:admart/presentation/utility/app_colors.dart';
import 'package:admart/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  int time = 120;
  bool _nextButtonStatus = false;

  @override
  void initState() {
    super.initState();
    _timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                AppLogo(),
                const SizedBox(height: 20),
                Text(
                  "Enter OTP Code",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  "A 4 Digit OTP Code has been Sent",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 12),
                _buildPinField(context),
                const SizedBox(height: 24),
                ElevatedButton(onPressed: () {Get.to(() => const CompleteProfileScreen());}, child: const Text("Next")),
                const SizedBox(
                  height: 16,
                ),
                _buildResendCodeMessage(),
                TextButton(
                  onPressed: _nextButtonStatus == true ? () {} : null,
                  child: const Text('Resend Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResendCodeMessage() {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          children: [
            const TextSpan(
              text: 'This code will expire in ',
            ),
            TextSpan(
                text: "${time.toString()}s",
                style: const TextStyle(color: AppColors.primaryColor)),
          ]),
    );
  }

  Widget _buildPinField(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      pastedTextStyle: TextStyle(
        color: Colors.green.shade600,
        fontWeight: FontWeight.bold,
      ),
      length: 4,
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.white,
      ),
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: _otpTEController,
      keyboardType: TextInputType.number,
    );
  }

  Future<void> _timer() async {
    for (int i = time; i > 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      time -= 1;
      setState(() {});
    }
    _nextButtonStatus = true;
    setState(() {});
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
