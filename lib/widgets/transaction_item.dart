// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

class TransactionItem extends StatelessWidget {
  var onTap;
  String title;
  String subTitle;
  String amount;
  String icon;
  String type;
  TransactionItem({
    Key? key,
    this.onTap,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.icon,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: CircleAvatar(
          backgroundColor:AppColors.bg,
          child: ClipRRect(
            child: Image.asset("lib/assets/img/$icon"),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(subTitle,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey)),
      trailing: Text(
        amount,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: (type == "+") ? Colors.green : Colors.red),
      ),
    );
  }
}
