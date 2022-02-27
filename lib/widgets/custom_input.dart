
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  String labelText;
  TextInputType textInputType;
  bool obscureText;
  double bottomMargin;
  TextEditingController controller;
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

    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      child: TextFormField(
        focusNode: myFocusNode,
        key: key,
        autofocus: false,
        obscureText: obscureText,
        validator: validator,
        keyboardType: inputType,
        controller: controller,
        style: const TextStyle(color: Colors.black, fontSize: 18.0),
        readOnly: readOnly,
        decoration: InputDecoration(
          fillColor: Colors.green,
          labelText: labelText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelStyle: TextStyle(
              color: myFocusNode.hasFocus ? Colors.blue : Colors.grey),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
