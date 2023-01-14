import 'package:bank_sha/models/transaction_model.dart';
import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  const HomeLatestTransactionItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          // Container(
          //   height: 48,
          //   width: 48,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: transaction.transactionType!.thumbnail == null
          //           ? AssetImage(
          //               'assets/img_bg_card.png',
          //             )
          //           : NetworkImage(
          //               transaction.transactionType!.thumbnail!,
          //             ) as ImageProvider,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Image.network(
          //   transaction.transactionType!.thumbnail!,
          //   width: 48,
          // ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.transactionType!.name.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  DateFormat('MMM dd').format(
                    transaction.createdAt ?? DateTime.now(),
                  ),
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            formatCurrency(transaction.amount ?? 0,
                symbol:
                    transaction.transactionType?.action == 'cr' ? '+ ' : '- '),
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
