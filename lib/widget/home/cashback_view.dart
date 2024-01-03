import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/config/app_text.dart';
import 'package:onsi/model/data.dart';

class CashbackView extends StatelessWidget {
  final DataModel dataModel;

  const CashbackView({
    required this.dataModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cashback',
          style: AppText.poppins16Bold,
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: AppColors.greenLight,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total saved',
                style: AppText.poppins15Medium.copyWith(color: AppColors.greenDark),
              ),
              Text(
                '${dataModel.currency}${dataModel.cashback.toStringAsFixed(2)}',
                style: AppText.poppins16Bold.copyWith(color: AppColors.greenDark),
              ),
            ],
          ),
        )
      ],
    );
  }
}
