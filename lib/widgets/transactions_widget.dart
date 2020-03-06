import 'package:flutter/material.dart';
import 'package:my_wallet/models/transaction.dart';
import 'package:my_wallet/widgets/transaction_item.dart';

class TransactionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: ListView.builder(
              padding: EdgeInsets.only(right: 6, left: 6),
              scrollDirection: Axis.vertical,
              itemCount: Transaction.getTransactions().length,
              itemBuilder: (BuildContext context, int index) {
                return TransactionItem(
                    transaction: Transaction.getTransactions()[index]);
              }),
        ),
      ),
    );
  }
}
