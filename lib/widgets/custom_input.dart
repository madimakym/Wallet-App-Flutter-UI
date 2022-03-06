// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  TextInputType textInputType;
  bool obscureText;
  double bottomMargin;
  TextEditingController controller;
  String labelText;
  bool readOnly;
  bool isNumeric;
  var validator;
  var onSaved;

  CustomInput({
    Key? key,
    required this.labelText,
    required this.obscureText,
    required this.textInputType,
    required this.bottomMargin,
    required this.validator,
    required this.controller,
    required this.readOnly,
    required this.isNumeric,
  }) : super(key: key);
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    TextInputType inputType =
        isNumeric ? TextInputType.number : TextInputType.text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        const SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(bottom: bottomMargin),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.bg,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            focusNode: myFocusNode,
            key: key,
            autofocus: false,
            obscureText: obscureText,
            validator: validator,
            keyboardType: inputType,
            controller: controller,
            style: const TextStyle(color: Colors.black),
            readOnly: readOnly,
            decoration: InputDecoration(
              labelText: null,
              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: null,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              labelStyle: TextStyle(
                  color: myFocusNode.hasFocus ? Colors.blue : Colors.grey),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
