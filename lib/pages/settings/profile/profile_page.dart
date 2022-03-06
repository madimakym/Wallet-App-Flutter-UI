import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/utils/validations.dart';
import 'package:wallet_app/widgets/custom_input.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Validations validations = Validations();
  late final TextEditingController _fistnameCtlr = TextEditingController();
  late final TextEditingController _lastnameCtlr = TextEditingController();
  late final TextEditingController _phoneCtlr = TextEditingController();
  late final TextEditingController _emailCtlr = TextEditingController();
  late final TextEditingController _addressCtlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _fistnameCtlr.text = "Maky";
    _lastnameCtlr.text = "Madi";
    _phoneCtlr.text = "784336020";
    _emailCtlr.text = "makymadi@gmail.com";
    _addressCtlr.text = "Damel city";
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
          backgroundColor: AppColors.bg,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "PROFILE",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.bg,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Icon(Icons.person,
                              color: Colors.black, size: 30.0))),
                  const SizedBox(height: 10),
                  const Text("Maky Madi",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(25.0),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5.0,
                              spreadRadius: .0,
                              offset: Offset(2.0, 2.0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Total Balance",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                Text("Card available",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ],
                            ),
                            const Text("\$5000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColors.bg,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomInput(
                          labelText: "Firstname",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: true,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _fistnameCtlr),
                      CustomInput(
                          labelText: "Lastname",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: true,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _lastnameCtlr),
                      CustomInput(
                          labelText: "Phone",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: true,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _phoneCtlr),
                      CustomInput(
                          labelText: "Email",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: true,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _emailCtlr),
                      CustomInput(
                          labelText: "Adresse",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: true,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _addressCtlr),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
