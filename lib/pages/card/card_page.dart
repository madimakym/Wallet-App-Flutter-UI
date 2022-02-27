import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/transaction_item.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  late List _transactions = [];
  String balance = "Solde";

  Future<String> loadJsonData() async {
    var transactionsJson =
        await rootBundle.loadString('lib/assets/json/transactions.json');
    setState(() => {_transactions = json.decode(transactionsJson)});
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
        backgroundColor: AppColors.primary,
        appBar: AppBar(
            backgroundColor: AppColors.primary,
            iconTheme: const IconThemeData(color: Colors.white),
            elevation: 0,
            title: const Text(
              "Statistics",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(children: [
                Container(
                  width: double.infinity,
                  color: AppColors.primary,
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
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      color: AppColors.primary,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Transactions",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
