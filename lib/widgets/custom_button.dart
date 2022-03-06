import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color color;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.color = AppColors.primary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPress(),
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.black,
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          textStyle: const TextStyle(fontSize: 15),
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
