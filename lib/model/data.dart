enum TransactionType { cashback, boostedCashback, charge, credit }

class DataModel {
  final String currency;
  final double balance;
  final double cashback;
  final List<TransactionModel> transactions;

  DataModel({
    required this.currency,
    required this.balance,
    required this.cashback,
    required this.transactions,
  });

  static DataModel dummy() {
    return DataModel(
      currency: '£',
      balance: 563.68,
      cashback: 21.30,
      transactions: [
        TransactionModel(
          type: TransactionType.credit,
          name: 'Top up',
          date: DateTime(2023, 10, 29, 16, 06, 0),
          amount: 50.00,
          currency: '£',
          currentBalance: 563.68,
        ),
        TransactionModel(
          type: TransactionType.boostedCashback,
          name: 'Boosted cashback',
          date: DateTime(2023, 10, 29, 15, 33, 0),
          amount: 2.52,
          currency: '£',
          currentBalance: 513.68,
        ),
        TransactionModel(
          type: TransactionType.charge,
          name: 'Shell',
          date: DateTime(2023, 10, 29, 15, 33, 0),
          amount: -50.93,
          currency: '£',
          currentBalance: 511.16,
        ),
        TransactionModel(
          type: TransactionType.cashback,
          name: 'Cashback',
          date: DateTime(2023, 10, 29, 19, 21, 0),
          amount: 0.60,
          currency: '£',
          currentBalance: 562.09,
        ),
        TransactionModel(
          type: TransactionType.charge,
          name: 'Tesco',
          date: DateTime(2023, 10, 28, 16, 06, 0),
          amount: -30,
          currency: '£',
          currentBalance: 561.49,
        ),
      ],
    );
  }
}

class TransactionModel {
  final TransactionType type;
  final String name;
  final DateTime date;
  final double amount;
  final String currency;
  final double currentBalance;

  TransactionModel({
    required this.type,
    required this.name,
    required this.date,
    required this.amount,
    required this.currency,
    required this.currentBalance,
  });
}
