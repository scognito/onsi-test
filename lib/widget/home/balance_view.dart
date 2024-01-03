import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/config/app_text.dart';
import 'package:onsi/model/data.dart';

class BalanceView extends StatelessWidget {
  final DataModel dataModel;

  const BalanceView({
    required this.dataModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Balance',
          style: AppText.poppins17Semibold.copyWith(color: AppColors.greyDark),
        ),
        Text(
          '${dataModel.currency}${dataModel.balance.toString()}',
          style: AppText.poppins34Semibold,
        ),
      ],
    );
  }
}
