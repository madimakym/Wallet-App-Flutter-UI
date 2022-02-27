// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

class ServiceItem extends StatelessWidget {
  var onTap;
  String title;
  String icon;
  final Color color;
  ServiceItem({
    Key? key,
    this.onTap,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                    // backgroundColor: AppColors.primaryLight,
                    backgroundColor: color,
                    child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          icon,
                          color: AppColors.primary,
                        ))),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(color: AppColors.grey),
              )
            ],
          ),
        ));
  }
}
