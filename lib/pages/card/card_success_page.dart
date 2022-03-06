import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

class CardSuccessPage extends StatefulWidget {
  const CardSuccessPage({Key? key}) : super(key: key);

  @override
  _CardSuccessPageState createState() => _CardSuccessPageState();
}

class _CardSuccessPageState extends State<CardSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.asset(
            //     'lib/assets/img/icon-success.json',
            //     repeat: false),
            Lottie.asset('lib/assets/img/icon-success.json', repeat: false),
            const SizedBox(height: 10),
            const Text("Link Card successfully",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            const Text("Thanks for using services",
                style: TextStyle(
                    color: AppColors.grey, fontWeight: FontWeight.w500)),
            const SizedBox(height: 40),
            CustomButton(
                title: "BACK TO HOME",
                onPress: () => Navigator.pop(context),
                color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
