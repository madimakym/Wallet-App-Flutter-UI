import 'package:flutter/material.dart';
import 'package:wallet_app/app.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/transaction_item.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.visaColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Statistics"),
        leading: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 0),
                      blurRadius: .0,
                      spreadRadius: .1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.chevron_left_outlined,
                    color: Colors.black, size: 30),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Center(
                  child: Image.asset("lib/assets/img/icons8-visa.png",
                      color: AppColors.white)),
              const SizedBox(height: 20),
              const Text(
                "\$15.0566.330",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text(
                "Credit card **** 9324",
                style: TextStyle(
                    color: AppColors.white,
                    // fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: const BoxDecoration(color: AppColors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text(
                        "Transactions",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // TransactionItem(
                    //     title: "Food for Lunch",
                    //     subTitle: "Delivery",
                    //     amount: "-\$28.60"),
                    // TransactionItem(
                    //     title: "Dribble",
                    //     subTitle: "Pro Subscription",
                    //     amount: "-\$9.99"),
                    // TransactionItem(
                    //     title: "Bank", subTitle: "Cashin", amount: "-\$8.00"),
                    // TransactionItem(
                    //     title: "Lyft",
                    //     subTitle: "Transport",
                    //     amount: "-\$52.50"),
                    // TransactionItem(
                    //     title: "Google Wallet",
                    //     subTitle: "Payment via Wallet",
                    //     amount: "-\$27.25"),
                    // TransactionItem(
                    //     title: "Apple Store",
                    //     subTitle: "Electronics",
                    //     amount: "-\$21.20"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
