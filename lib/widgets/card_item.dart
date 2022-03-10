import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

cardItem(
    {String? name, icon, balance, cardCode, required BuildContext context}) {
  return InkWell(
    onTap: () => Navigator.pushNamed(context, '/card'),
    child: SizedBox(
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
              offset: Offset(2.0, 2.0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                Image.asset(icon, width: 30, color: Colors.white),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("**** ",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                const Text("**** ",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                const Text("**** ",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text(
                  cardCode,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Balance", style: TextStyle(color: Colors.white)),
            Text(
              balance,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
