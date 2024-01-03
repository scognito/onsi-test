import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/config/app_theme.dart';
import 'package:onsi/model/data.dart';
import 'package:onsi/screen/home/home_screen_viewmodel.dart';
import 'package:onsi/widget/home/action_buttons_view.dart';
import 'package:onsi/widget/home/balance_view.dart';
import 'package:onsi/widget/home/cashback_view.dart';
import 'package:onsi/widget/home/transactions_view.dart';
import 'package:provider/provider.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.padding),
          child: ChangeNotifierProvider<HomeScreenViewModel>(
            create: (context) => HomeScreenViewModel(),
            child: Consumer<HomeScreenViewModel>(builder: (context, model, child) {
              if (model.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              // we assume that the data is loaded and no error is thrown
              DataModel dataModel = model.dataModel!;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 38),
                    BalanceView(dataModel: dataModel),
                    const SizedBox(height: 12),
                    const ActionButtonView(),
                    const SizedBox(height: 32),
                    CashbackView(dataModel: dataModel),
                    const SizedBox(height: 32),
                    TransactionsView(dataModel: dataModel),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
