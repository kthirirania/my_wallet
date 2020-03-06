import 'package:flutter/material.dart';
import 'package:my_wallet/widgets/credit_card_widget.dart';
import 'package:my_wallet/widgets/home_top_widget.dart';
import 'package:my_wallet/widgets/transactions_header_widget.dart';
import 'package:my_wallet/widgets/transactions_widget.dart';

class HomeScreen extends StatelessWidget {
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
        TransactionsHeaderWidget(),
        TransactionsWidget(),
      ],
    );
  }
}
