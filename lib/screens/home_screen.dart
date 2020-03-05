import 'package:flutter/material.dart';
import 'package:my_wallet/widgets/credit_card_widget.dart';
import 'package:my_wallet/widgets/home_top_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Recent';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        //I have set Safe area top to false in the bottom_navigation_widget
        // so I need to make a space for it here.
        SizedBox(
          height: 64,
        ),
        HomeTopWidget(),
        CreditCardWidget(),
      ],
    );
  }
}
