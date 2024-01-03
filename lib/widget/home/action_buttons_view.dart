import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/widget/commons/button_view.dart';

class ActionButtonView extends StatelessWidget {
  const ActionButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ButtonView(
            text: 'Add money',
            backgroundColor: AppColors.blueDark,
            borderColor: AppColors.blueDark,
            textColor: AppColors.white,
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Add money'))),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ButtonView(
            text: 'Instant savings',
            backgroundColor: AppColors.white,
            borderColor: AppColors.greyMedium,
            textColor: AppColors.black,
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Instant savings'))),
          ),
        )
      ],
    );
  }
}
