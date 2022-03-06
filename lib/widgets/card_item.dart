// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_app/utils/appcolors.dart';

class CardItem extends StatelessWidget {
  var onTap;
  String name;
  String balance;
  String cardCode;
  String icon;
  CardItem({
    Key? key,
    this.onTap,
    required this.name,
    required this.balance,
    required this.cardCode,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                blurRadius: 5.0, // soften the shadow
                spreadRadius: .0, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 10  horizontally
                  2.0, // Move to bottom 10 Vertically
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
                children: [
                  Text(name,
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
}
