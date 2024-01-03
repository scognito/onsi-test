import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/config/app_text.dart';
import 'package:onsi/model/data.dart';
import 'package:onsi/utils.dart';
import 'package:onsi/widget/home/round_transaction_icon_view.dart';

class TransactionsView extends StatelessWidget {
  final DataModel dataModel;

  const TransactionsView({
    required this.dataModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Transactions',
          style: AppText.poppins15Bold,
        ),
        ...dataModel.transactions.map(
          (transaction) => TransactionRowView(
            transaction: transaction,
          ),
        ),
      ],
    );
  }
}

class TransactionRowView extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionRowView({
    required this.transaction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          RoundTransactionIconView(transaction: transaction),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.name,
                      style: AppText.poppins13Semibold.copyWith(
                        color: Utils.getTransactionColor(transaction.type),
                      ),
                    ),
                    Text(
                      Utils.getFormattedDate(transaction.date),
                      style: AppText.poppins12Medium.copyWith(color: AppColors.greyDark),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _formatAmount(transaction),
                      style: AppText.poppins13Semibold.copyWith(
                        color: Utils.getTransactionColor(transaction.type),
                      ),
                    ),
                    Text(
                      '${transaction.currency}${transaction.currentBalance.toStringAsFixed(2)}',
                      style: AppText.poppins12Medium.copyWith(color: AppColors.greyDark),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String _formatAmount(TransactionModel transaction) {
    return '${transaction.amount > 0 ? '+' : '-'} ${transaction.currency}${transaction.amount.abs().toStringAsFixed(2)}';
  }
}
