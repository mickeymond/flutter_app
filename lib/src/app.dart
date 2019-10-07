import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/home.dart';
import 'package:flutter_app/src/states/home.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (BuildContext context) => HomeState(),
      child: MaterialApp(
        title: 'Eth Wallet',
        home: HomeScreen(),
      ),
    );
  }

}
