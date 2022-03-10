import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/card_item.dart';
import 'package:wallet_app/widgets/service_item.dart';
import 'package:wallet_app/widgets/transaction_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List _transactions = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Maky Madi",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                        Text("ID: 12546",
                            style:
                                TextStyle(fontSize: 12, color: AppColors.grey))
                      ],
                    ),
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: CircleAvatar(
                            backgroundColor: AppColors.bg,
                            child: Icon(Icons.notification_important,
                                color: Colors.black, size: 18.0))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: cardItem(
                name: "MAKY MADI",
                balance: "\$ 150566330",
                cardCode: "9432",
                icon: "lib/assets/img/icons8-visa.png",
                context: context,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Services",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  serviceItem(
                    title: "Wallet",
                    icon: "lib/assets/img/icons8-wallet.png",
                    color: const Color(0xFFE3FBFF),
                  ),
                  serviceItem(
                    title: "Transfer",
                    icon: "lib/assets/img/icons8-get_cash.png",
                    color: const Color(0xFFE3FBFF),
                  ),
                  serviceItem(
                    title: "Pay Bills",
                    icon: "lib/assets/img/icons8-cash_on_delivery.png",
                    color: const Color(0xFFE3FBFF),
                  ),
                  serviceItem(
                    title: "Pay",
                    icon: "lib/assets/img/icons8-euro_money.png",
                    color: const Color(0xFFE3FBFF),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Transactions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, "/transactions"),
                      child: const Icon(Icons.chevron_right_outlined)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var item in _transactions)
                      TransactionItem(
                          title: item['title'],
                          subTitle: item['subtitle'],
                          amount: item['amount'],
                          icon: item['icon'],
                          type: item['type']),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> loadJsonData() async {
    var transactionsJson =
        await rootBundle.loadString('lib/assets/json/transactions.json');
    setState(() => {_transactions = json.decode(transactionsJson)});
    return 'success';
  }
}
