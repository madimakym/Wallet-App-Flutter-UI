import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

serviceItem({String? title, icon, Color? color}) {
  return SizedBox(
    child: Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
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
          title!,
          style: const TextStyle(color: AppColors.grey),
        )
      ],
    ),
  );
}
