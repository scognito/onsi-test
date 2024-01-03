import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/model/data.dart';
import 'package:onsi/utils.dart';

class RoundTransactionIconView extends StatelessWidget {
  final TransactionModel transaction;

  const RoundTransactionIconView({
    required this.transaction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = AppColors.greyLight;
    Color borderColor = AppColors.white;
    const  double iconSize = 22;

    Icon icon = const Icon(
      Icons.question_mark,
      color: AppColors.black,
      size: iconSize,
    );

    switch (transaction.type) {
      case TransactionType.cashback:
        backgroundColor = AppColors.greenLight;
        borderColor = AppColors.greenLight;
        icon = Icon(
          Icons.add,
          color: Utils.getTransactionColor(transaction.type),
          size: iconSize,
        );
        break;
      case TransactionType.boostedCashback:
        backgroundColor = AppColors.white;
        borderColor = AppColors.greenMedium;
        icon = Icon(
          Icons.trending_up,
          color: Utils.getTransactionColor(transaction.type),
          size: iconSize,
        );
        break;
      case TransactionType.charge:
        backgroundColor = AppColors.greyLight;
        borderColor = AppColors.greyLight;
        icon = Icon(
          Icons.remove,
          color: Utils.getTransactionColor(transaction.type),
          size: iconSize,
        );
        break;
      case TransactionType.credit:
        backgroundColor = AppColors.blueLight;
        borderColor = AppColors.blueLight;
        icon = Icon(
          Icons.add,
          color: Utils.getTransactionColor(transaction.type),
          size: iconSize,
        );
        break;
    }

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 2),
      ),
      width: 45,
      height: 45,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          icon,
          if (transaction.type == TransactionType.boostedCashback)
            Positioned(
              bottom: -4,
              right: -4,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greenLight,
                ),
                margin: const EdgeInsets.all(2),
                child: const Icon(
                  Icons.add,
                  size: 14,
                  color: AppColors.greenDark,
                ),
              ),
            )
        ],
      ),
    );
  }
}
