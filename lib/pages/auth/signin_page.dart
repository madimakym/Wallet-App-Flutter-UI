import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/custom_button.dart';
import 'package:wallet_app/widgets/custom_input.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController emailCtlr = TextEditingController();
  TextEditingController phoneCtlr = TextEditingController();
  TextEditingController passwordCtlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customSize = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: customSize / 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Sign in to",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                  Text("your account",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700))
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome back, you've been missed!",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomInput(
                      labelText: "Email",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      isNumeric: false,
                      readOnly: false,
                      bottomMargin: 20.0,
                      validator: null,
                      controller: emailCtlr),
                  CustomInput(
                      labelText: "Password",
                      obscureText: true,
                      textInputType: TextInputType.text,
                      isNumeric: false,
                      readOnly: false,
                      bottomMargin: 20.0,
                      validator: null,
                      controller: passwordCtlr),
                  CustomButton(
                      title: "Sign in",
                      onPress: () => Navigator.pushNamed(context, "/home"),
                      color: AppColors.primary),
                ],
              ),
              const SizedBox(height: 80),
              Center(
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/signup"),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 13),
                      children: <TextSpan>[
                        TextSpan(text: 'You don\'t have an account? '),
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
