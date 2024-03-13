import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLogin(BuildContext context) {
    Navigator.of(context).pushNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/bg.png",
              height: 340,
              width: 340,
              color: tabColor,
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''Read our privacy policy, Tap "Agree and continue" to accept the Terms of Services''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: greyColor,
                ),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: CustomButton(
                    text: "Agree and Continue",
                    onPressed: () => navigateToLogin(context))),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
