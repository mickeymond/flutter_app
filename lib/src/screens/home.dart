import 'package:flutter/material.dart';
import 'package:flutter_app/src/states/home.dart';
import 'package:flutter_app/src/widgets/settings.dart';
import 'package:flutter_app/src/widgets/transactions.dart';
import 'package:flutter_app/src/widgets/wallet.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    return Scaffold(
        appBar: AppBar(
          title: renderAppBarTitle(homeState.selectedTab),
        ),
        body: renderTabView(homeState.selectedTab),
        bottomNavigationBar: renderBottomNavigation(homeState),
      );
  }

  Widget renderAppBarTitle(int selectedTab) {
    if (selectedTab == 2) {
      return Text('Settings');
    } else if (selectedTab == 1) {
      return Text('Transactions');
    } else {
      return Text('Wallet');
    }
  }

  Widget renderTabView(int selectedTab) {
    if (selectedTab == 2) {
      return SettingsWidget();
    } else if (selectedTab == 1) {
      return TransactionsWidget();
    } else {
      return WalletWidget();
    }
  }

  Widget renderBottomNavigation(HomeState homeState) {
    return BottomNavigationBar(
      currentIndex: homeState.selectedTab,
      onTap: (int index) => homeState.selectedTab = index,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: Text('Wallet'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Transactions'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    );
  }

}
