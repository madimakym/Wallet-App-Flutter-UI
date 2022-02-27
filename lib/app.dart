import 'package:flutter/material.dart';
import 'package:wallet_app/pages/home/home_page.dart';
import 'package:wallet_app/pages/transaction/transaction_page.dart';
import 'package:wallet_app/widgets/tabbar.dart';

import 'pages/card/card_page.dart';
import 'widgets/transition.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TabsPage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case "/card":
            return FadeTransitionRoute(widget: const CardPage());
          case "/transactions":
            return FadeTransitionRoute(widget: const TransactionPage());
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}
