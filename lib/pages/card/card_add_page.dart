import 'package:flutter/material.dart';
import 'package:wallet_app/pages/card/card_success_page.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/utils/validations.dart';
import 'package:wallet_app/widgets/custom_button.dart';
import 'package:wallet_app/widgets/custom_input.dart';

class CardAddPage extends StatefulWidget {
  const CardAddPage({Key? key}) : super(key: key);

  @override
  _CardAddPageState createState() => _CardAddPageState();
}

class _CardAddPageState extends State<CardAddPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Validations validations = Validations();
  late final TextEditingController _cardNumberCtlr = TextEditingController();
  late final TextEditingController _cardNameCtlr = TextEditingController();
  late final TextEditingController _expirationDateCtlr =
      TextEditingController();
  late final TextEditingController _cvvCtlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
          backgroundColor: AppColors.bg,
          elevation: 0,
          title: const Text(
            "CARD",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              width: double.infinity,
              color: AppColors.bg,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text("Adding New Card",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Container(
                      height: 180,
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5.0,
                            spreadRadius: .0,
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("CARDHOLDER NAME",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: const [
                              Text("7653   ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text("5732   ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text("0942   ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text("8973",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text("Valable",
                              style: TextStyle(color: Colors.white)),
                          const Text(
                            "04/24",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("Fill in the fields bellow to add a new card",
                      style: TextStyle(fontSize: 15)),
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
                          labelText: "Card Number",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: false,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _cardNumberCtlr),
                      CustomInput(
                          labelText: "Card holder name",
                          obscureText: false,
                          textInputType: TextInputType.text,
                          isNumeric: false,
                          readOnly: false,
                          bottomMargin: 15.0,
                          validator: validations.validateInput,
                          controller: _cardNameCtlr),
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: CustomInput(
                                    labelText: "Expiration date",
                                    obscureText: false,
                                    textInputType: TextInputType.text,
                                    isNumeric: false,
                                    readOnly: false,
                                    bottomMargin: 15.0,
                                    validator: validations.validateInput,
                                    controller: _expirationDateCtlr),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: CustomInput(
                                    labelText: "CVV",
                                    obscureText: false,
                                    textInputType: TextInputType.text,
                                    isNumeric: true,
                                    readOnly: false,
                                    bottomMargin: 15.0,
                                    validator: validations.validateInput,
                                    controller: _cvvCtlr),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomButton(
                          title: "ADD NEW CARD",
                          onPress: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (BuildContext context) {
                                          return const CardSuccessPage();
                                        },
                                        fullscreenDialog: true))
                              },
                          color: AppColors.primary),
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
