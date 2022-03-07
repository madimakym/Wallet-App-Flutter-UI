import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/custom_button.dart';
import 'package:wallet_app/widgets/custom_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailCtlr = TextEditingController();
  TextEditingController firstnameCtlr = TextEditingController();
  TextEditingController lastnameCtlr = TextEditingController();
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
        title: const Text("Sign up", style: TextStyle(color: Colors.black)),
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
                  Text("Create Account",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: 10),
              const Text("Enter your Name, Email and Password \nfor sign up"),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomInput(
                      labelText: "Firstname",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      isNumeric: false,
                      readOnly: false,
                      bottomMargin: 20.0,
                      validator: null,
                      controller: firstnameCtlr),
                  CustomInput(
                      labelText: "Lastname",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      isNumeric: false,
                      readOnly: false,
                      bottomMargin: 20.0,
                      validator: null,
                      controller: firstnameCtlr),
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
                  SizedBox(height: customSize / 10),
                  CustomButton(
                      title: "Create Account",
                      onPress: () =>
                          Navigator.popAndPushNamed(context, "/home"),
                      color: AppColors.primary),
                ],
              ),
              const SizedBox(height: 80),
              Center(
                child: InkWell(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
