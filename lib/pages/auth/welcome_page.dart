import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final customSize = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("eWallet",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            SizedBox(height: customSize / 5),
            Lottie.asset('lib/assets/img/icon-welcome.json'),
            SizedBox(height: customSize / 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: const Text(
                "Make personal financial management more enjoyable",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: customSize / 10),
            CustomButton(
              title: "Sign up",
              onPress: () => Navigator.popAndPushNamed(context, "/signup"),
              color: AppColors.primary,
            ),
            SizedBox(height: customSize / 20),
            InkWell(
              onTap: () => Navigator.popAndPushNamed(context, "/signin"),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 13),
                  children: <TextSpan>[
                    TextSpan(text: 'Already have an account? '),
                    TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
