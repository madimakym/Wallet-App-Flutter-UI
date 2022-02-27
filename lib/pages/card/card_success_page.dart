import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/custom_button.dart';

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
            SizedBox(
                width: 150,
                child: Image.asset("lib/assets/img/icon-success.png")),
            const SizedBox(height: 20),
            const Text("Link Card successfully",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            const Text("Thanks for using services",
                style: TextStyle(
                    color: AppColors.grey, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            CustomButton(
                title: "BACK TO HOME",
                onPress: () => Navigator.pop(context),
                color: AppColors.primary),
            const SizedBox(height: 20),
            const Text("View wallet",
                style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
