import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'package:wallet_app/widgets/transaction_item.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  late List _transactions = [];
  String balance = "Solde";

  Future<String> loadJsonData() async {
    var transactionsJson =
        await rootBundle.loadString('lib/assets/json/transactions.json');
    setState(() => _transactions = json.decode(transactionsJson));
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
      appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          title: const Text(
            "TRANSACTIONS",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
          )),
      body: Container(
        padding: const EdgeInsets.all(.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in _transactions)
                TransactionItem(
                  title: item['title'],
                  subTitle: item['subtitle'],
                  amount: item['amount'],
                  icon: item['icon'],
                  type: item['type'],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
