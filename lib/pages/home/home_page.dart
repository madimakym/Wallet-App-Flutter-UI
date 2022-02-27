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
  late List _cards = [];
  late List _transactions = [];
  String balance = "Solde";

  Future<String> loadJsonData() async {
    var cardsJson = await rootBundle.loadString('lib/assets/json/card.json');
    var transactionsJson =
        await rootBundle.loadString('lib/assets/json/transactions.json');
    setState(() => {
          _cards = json.decode(cardsJson),
          _transactions = json.decode(transactionsJson)
        });
    return 'success';
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.grey))
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
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          for (var item in _cards)
                            CardItem(
                                name: item['card_user'],
                                balance: "\$ ${item['card_balance']}",
                                cardCode: item['card_code'],
                                icon: "lib/assets/img/${item['card_icon']}",
                                cardColors: item['card_color']),
                        ],
                      ),
                    ),
                  ),
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
                              fontSize: 18, fontWeight: FontWeight.w500))
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
                    ServiceItem(
                        title: "Wallet",
                        icon: "lib/assets/img/icons8-wallet.png"),
                    ServiceItem(
                        title: "Transfer",
                        icon: "lib/assets/img/icons8-get_cash.png"),
                    ServiceItem(
                        title: "Pay Bills",
                        icon: "lib/assets/img/icons8-cash_on_delivery.png"),
                    ServiceItem(
                        title: "Pay",
                        icon: "lib/assets/img/icons8-euro_money.png")
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
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
          )),
    );
  }
}
