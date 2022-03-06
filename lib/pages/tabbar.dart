import 'package:flutter/material.dart';
import 'package:wallet_app/pages/card/card_add_page.dart';
import 'package:wallet_app/pages/settings/settings_page.dart';
import 'package:wallet_app/pages/transaction/transaction_page.dart';
import 'package:wallet_app/utils/appcolors.dart';
import 'home/home_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabsPageState();
  }
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const TransactionPage(),
    const CardAddPage(),
    const SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 22,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primary,
        selectedLabelStyle: Theme.of(context)
            .textTheme
            .bodyText1
            ?.merge(const TextStyle(fontSize: 12)),
        showSelectedLabels: true,
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .button!
            .merge(const TextStyle(fontSize: 12)),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppColors.grey),
            activeIcon: Icon(Icons.home, color: AppColors.primary),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined, color: AppColors.grey),
            activeIcon: Icon(Icons.list_outlined, color: AppColors.primary),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: AppColors.grey),
            activeIcon: Icon(Icons.credit_card, color: AppColors.primary),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: AppColors.grey),
            activeIcon: Icon(Icons.person, color: AppColors.primary),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
